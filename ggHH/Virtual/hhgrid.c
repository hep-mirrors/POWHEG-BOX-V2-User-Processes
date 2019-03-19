
#include "hhgrid.h"

#include <python2.7/Python.h>
#include <stdlib.h> // setenv, strdup, strtok, NULL
#include <assert.h> // assert
#include <unistd.h> // access

// BOF - Helper Functions (mostly for Fortran)
void python_initialize()
{
    Py_Initialize();
    if (!Py_IsInitialized())
    {
        printf("ERROR: Failed to initialize Python interpreter\n");
        exit(1);
    }
};

void python_decref(PyObject* grid)
{
    Py_DECREF(grid);
};

void python_finalize()
{
    Py_Finalize();
};

void python_printinfo()
{
    const char* programFullPath = Py_GetProgramFullPath();
    const char* getVersion = Py_GetVersion();
    const char* getPythonHome = Py_GetPythonHome();
    const char* getPath = Py_GetPath();

    printf("== Python Parameters ==\n");
    printf("Py_GetProgramFullPath: %s\n", programFullPath);
    printf("Py_GetVersion: %s\n", getVersion);
    printf("Py_GetPythonHome: %s\n", getPythonHome);
    printf("Py_GetPath: %s\n", getPath);
    printf("\n");
};
// EOF - Helper Functions (mostly for Fortran)

void combine_grids(const char* grid_temp, double cHHH)
{
    char* cHHH_values[3] = {"-1.0", "0.0", "1.0"};

    int search_paths = 1;
    char* delims = ":";
    char* path_sep = "/";
    char* grid_file_path;
    size_t len_path_sep = strlen(path_sep);
    char* pythonpath = strdup(getenv("PYTHONPATH"));
    char* result = strtok( pythonpath, delims );

    char grid_tmp[16];
    strncpy(grid_tmp, grid_temp, 10); // Only take the first characters to look for the three basic cHHH grids
    grid_tmp[10]='\0';

    for (int i=0; i<3; ++i) {
      size_t len_grid_name = strlen(grid_tmp) + strlen("cHHH_") + strlen(cHHH_values[i]) + strlen(".grid") + 1;  // +14 for _(cHHH).grid
      char* grid_name = (char*) malloc(len_grid_name);
      memcpy(grid_name, grid_tmp, strlen(grid_tmp));
      memcpy(grid_name + strlen(grid_tmp), "cHHH_", strlen("cHHH_"));
      memcpy(grid_name + strlen(grid_tmp) + strlen("cHHH_"), cHHH_values[i], strlen(cHHH_values[i]));
      memcpy(grid_name + strlen(grid_tmp) + strlen("cHHH_") + strlen(cHHH_values[i]), ".grid", strlen(".grid"));
      grid_name[len_grid_name-1] = '\0';

    // Check if grid_name is accessible as-is    
    if( access(grid_name, F_OK) != -1 && access(grid_name, R_OK) != -1 )
    {
        printf("Looking for %s in current directory. Found\n", grid_name);
        grid_file_path = (char*) malloc(len_grid_name + 1); // +1 for null terminator
        memcpy(grid_file_path, grid_name, len_grid_name + 1);
        search_paths = 0;
        setenv("PYTHONPATH", ".", 1); // Set PYTHONPATH to look here
    }

    // Else search PYTHONPATH for grid_name
    while( search_paths == 1 && result != NULL )
    {
        size_t len_result = strlen(result);
        grid_file_path = (char*) malloc (len_result + len_path_sep + len_grid_name + 1); // +1 for null terminator
        memcpy(grid_file_path, result, len_result);
        memcpy(grid_file_path + len_result, path_sep, len_path_sep);
        memcpy(grid_file_path + len_result + len_path_sep, grid_name, len_grid_name + 1); // +1 for null terminator
        printf("Searching for %s in: %s ", grid_name, grid_file_path);
        if( access(grid_file_path, F_OK) != -1 && access(grid_file_path, R_OK) != -1 )
        {
            printf("found\n");
            search_paths = 0;
        } else
        {
            printf("not found\n");
            result = strtok( NULL, delims );
            if(result == NULL)
            {
                printf("ERROR: Failed to find grid\n");
                exit(1);
            }
        }
    }
    }

    PyObject* pModule = PyImport_ImportModule("creategrid");
    if(pModule == NULL)
    {
        PyErr_Print();
        printf("ERROR: Failed to load creategrid.py: please check that you have numpy and scipy installed\n");
    }
    assert(pModule != NULL);

    PyObject* pFct = PyObject_GetAttrString(pModule, "combinegrids");
    if(pFct == NULL)
    {
        PyErr_Print();
        printf("ERROR: Failed to locate CreateGrid class: please check that you have the latest version of creategrid.py and Python 2.7.x\n");
    }
    assert(pFct != NULL);

    PyObject* pGridName = PyString_FromString(grid_temp);
    if(pGridName == NULL)
    {
        PyErr_Print();
        printf("ERROR: Failed to create Python string from grid_temp: please check that grid_temp is a valid string\n");
    }
    assert(pGridName != NULL);
    
    PyObject* pcHHHValue = PyFloat_FromDouble(cHHH);
    if(pcHHHValue == NULL)
    {
        PyErr_Print();
        printf("ERROR: Failed to create Python double from cHHH: please check that cHHH is a valid double\n");
    }
    assert(pcHHHValue != NULL);

    PyObject* pGridNameTuple = PyTuple_Pack(2,pGridName,pcHHHValue);
    if(pGridNameTuple == NULL)
    {
        PyErr_Print();
        printf("ERROR: Failed to create Python tuple: please check that your Python version is 2.7.x\n");
    }
    assert(pGridNameTuple != NULL);

    PyObject* pFunct = PyObject_CallObject(pFct, pGridNameTuple);
    if(pFunct == NULL)
    {
        PyErr_Print();
        printf("ERROR: Failed to call combinegrids: please check that you have the latest version of creategrid.py and Python 2.7.x\n");
    }
    assert(pFunct != NULL);

    // Cleanup
    free(pythonpath);
    free(grid_file_path);
    Py_DECREF(pModule);
    Py_DECREF(pFct);
    Py_DECREF(pGridName);
    Py_DECREF(pcHHHValue);
    Py_DECREF(pGridNameTuple);
    Py_DECREF(pFunct);
};

PyObject* grid_initialize(const char* grid_name)
{
    int search_paths = 1;
    char* delims = ":";
    char* path_sep = "/";
    char* grid_file_path;
    size_t len_path_sep = strlen(path_sep);
    size_t len_grid_name = strlen(grid_name);
    char* pythonpath = strdup(getenv("PYTHONPATH"));
    char* result = strtok( pythonpath, delims );

    // Check if grid_name is accessible as-is
    if( access(grid_name, F_OK) != -1 && access(grid_name, R_OK) != -1 )
    {
	printf("Looking for %s in current directory. Found\n", grid_name);
        grid_file_path = (char*) malloc(len_grid_name + 1); // +1 for null terminator
        memcpy(grid_file_path, grid_name, len_grid_name + 1);
        search_paths = 0;
        setenv("PYTHONPATH", ".", 1); // Set PYTHONPATH to look here
    }

    // Else search PYTHONPATH for grid_name
    while( search_paths == 1 && result != NULL )
    {
        size_t len_result = strlen(result);
        grid_file_path = (char*) malloc (len_result + len_path_sep + len_grid_name + 1); // +1 for null terminator
        memcpy(grid_file_path, result, len_result);
        memcpy(grid_file_path + len_result, path_sep, len_path_sep);
        memcpy(grid_file_path + len_result + len_path_sep, grid_name, len_grid_name + 1); // +1 for null terminator
        printf("Searching for %s in: %s ", grid_name, grid_file_path);
        if( access(grid_file_path, F_OK) != -1 && access(grid_file_path, R_OK) != -1 )
        {
            printf("found\n");
            search_paths = 0;
        } else
        {
            printf("not found\n");
            result = strtok( NULL, delims );
            if(result == NULL)
            {
                printf("ERROR: Failed to find grid\n");
                exit(1);
            }
        }
    }

    printf("PYTHONPATH: %s\n", getenv("PYTHONPATH"));
    printf("Grid Path: %s\n", grid_file_path);

    PyObject* pModule = PyImport_ImportModule("creategrid");
    if(pModule == NULL)
    {
        PyErr_Print();
        printf("ERROR: Failed to load creategrid.py: please check that you have numpy and scipy installed\n");
    }
    assert(pModule != NULL);

    PyObject* pClass = PyObject_GetAttrString(pModule, "CreateGrid");
    if(pClass == NULL)
    {
        PyErr_Print();
        printf("ERROR: Failed to locate CreateGrid class: please check that you have the latest version of creategrid.py and Python 2.7.x\n");
    }
    assert(pClass != NULL);

    PyObject* pGridName = PyString_FromString(grid_file_path);
    if(pGridName == NULL)
    {
        PyErr_Print();
        printf("ERROR: Failed to create Python string from grid_file_path: please check that grid_file_path is a valid string\n");
    }
    assert(pGridName != NULL);

    PyObject* pGridNameTuple = PyTuple_Pack(1,pGridName);
    if(pGridNameTuple == NULL)
    {
        PyErr_Print();
        printf("ERROR: Failed to create Python tuple: please check that your Python version is 2.7.x\n");
    }
    assert(pGridNameTuple != NULL);

    PyObject* pInstance = PyInstance_New(pClass, pGridNameTuple, NULL);
    if(pInstance == NULL)
    {
        PyErr_Print();
        printf("ERROR: Failed to create instance of CreateGrid: please check that you have the latest version of creategrid.py and Python 2.7.x\n");
    }
    assert(pInstance != NULL);

    // Cleanup
    free(pythonpath);
    free(grid_file_path);
    Py_DECREF(pModule);
    Py_DECREF(pClass);
    Py_DECREF(pGridName);
    Py_DECREF(pGridNameTuple);

    return pInstance;
};

double grid_virt(PyObject* grid, double s, double t)
{
    PyObject* pResult = PyObject_CallMethod(grid, "GetAmplitude", "(ff)", s, t);
    if(pResult == NULL)
    {
        PyErr_Print();
        printf("ERROR: Failed to compute result\n");
    }
    assert(pResult != NULL);

    double result = PyFloat_AsDouble(pResult);

    // Cleanup
    Py_DECREF(pResult);

    return result;
};
