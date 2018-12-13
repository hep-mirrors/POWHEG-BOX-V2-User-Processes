#! /usr/bin/env python

import sys, os, math
import time

def createjoblist(user,jobs):

    qs = os.popen('qstat -u '+user)
    lines = qs.readlines()

    for line in lines[2:]:

        tline=tuple(" ".join(line.split()).split())
        status=tline[4]

        if jobs.has_key(tline[2]):
            jobs[tline[2]].append(tline)
        else:
            jobs[tline[2]] = [tline]

    return

def sed(infile,outfile,subs):

    if not os.path.isfile(infile):
        print "Input file "+infile+" does not exist."

    readall=False
    inputsave=open(infile,'r')
    input4run=open(outfile,'w')

    while not readall:

        parline=inputsave.readline()

        if len(parline)==0:
            readall=True
            break

        for string in subs.keys():

            if string in parline:                                                                                                                                                                         
                parline=parline.replace(string,subs[string])                                                                                                                                              

        input4run.write(parline)

    inputsave.close()
    input4run.close()

    return


def sedline(infile,outfile,subs):

    if not os.path.isfile(infile):
        print "Input file "+infile+" does not exist."

    readall=False
    inputsave=open(infile,'r')
    input4run=open(outfile,'w')
    
    while not readall:
        
        parline=inputsave.readline()
        
        if len(parline)==0:
            readall=True
            break

        for string in subs.keys():
        
            if parline.startswith(string):
                tmp=parline.strip()
                parline=parline.replace(tmp,subs[string])

        input4run.write(parline)
        
    inputsave.close()
    input4run.close()

    return

def run_pwhg(runname,parstage,xgrid,startseed,ncore,limittime):
    
    print "***********************************************"
    print " stage ", parstage
    if xgrid != 0:
        print " xgrid ", xgrid
    print "***********************************************"
                  
    if xgrid != 0:              
        subs_pwhg={'parallelstage 1':'parallelstage '+str(parstage),
                   'xgriditeration 1':'xgriditeration '+str(xgrid)}
    elif parstage == 4:
        subs_pwhg={'parallelstage 1':'parallelstage '+str(parstage),
                   'testplots':'# testplots 1'}
    else:
        subs_pwhg={'parallelstage 1':'parallelstage '+str(parstage)}

    if os.path.isfile('powheg.input'):
        os.system('rm powheg.input')

    sedline('powheg.input-save','powheg.input',subs_pwhg)

    if xgrid != 0:        
        os.system('cp powheg.input powheg.input-'+str(parstage)+'-'+str(xgrid))
    else:
        os.system('cp powheg.input powheg.input-'+str(parstage))

    for core in range(startseed,startseed+ncore):
        if xgrid != 0:        
            logname="run-"+str(parstage)+"-"+str(xgrid)+"-"+str(core)
        else:
            logname="run-"+str(parstage)+"-"+str(core)

        logfile=logname+".log"

        subs_qsub={'xxx':str(core),
                   'yyy':logfile,
                   'nnn':runname,
                   'ttt':str(limittime)}

        sed('submit.sh','Qsub/submit_'+logname+'.sh',subs_qsub)        
        os.system('qsub Qsub/submit_'+logname+'.sh')

    return


def run_pwhg_rwgt(runname,it,facscfact,renscfact,q2mergefac,startseed,ncore,limittime):

    print "***********************************************"
    print " Run reweight: "
    print "    facscfact =",facscfact
    print "    renscfact =",renscfact
    print "    q2mergefac=",q2mergefac
    print "***********************************************"

    subs_pwhg={'storeinfo_rwgt':'compute_rwgt  1',
               'facscfact':'facscfact '+facscfact,
               'renscfact':'renscfact '+renscfact,
               'q2mergefac':'q2mergefac '+q2mergefac,
               'parallelstage':'# parallelstage',
               'xgriditeration':'# xgriditeration',
               'fastbtlbound':'#fastbtlbound',               
               }

    if os.path.isfile('powheg.input'):
        os.system('rm powheg.input')

    sedline('powheg.input-save','powheg.input',subs_pwhg)

    os.system('cp powheg.input powheg.input-W'+str(it))

    for core in range(startseed,startseed+ncore):
        logname="run-rwgt-W"+str(it)+"-"+str(core)

        logfile=logname+".log"
        eventfile="pwgevents-"+str(core).zfill(4)+".lhe"

        subs_qsub={'xxx':str(core),
                   'yyy':logfile,
                   'nnn':runname,
                   'fff':eventfile,
                   'ttt':str(limittime)}

        sed('submit_rwgt.sh','Qsub/submit_'+logname+'.sh',subs_qsub)
        os.system('qsub Qsub/submit_'+logname+'.sh')

    return


def run_pwhg_analysis(runname,runtype,startseed,ncore,limittime):

    print "***********************************************"
    print " Running analysis: ", runtype
    print "***********************************************"

    if os.path.isfile('powheg.input'):
        os.system('rm powheg.input')

    os.system('cp powheg.input-save powheg.input')
    
    if runtype == 'LHEF':
        program='lhef_analysis'
        logname="log-"
        os.system('rm pwgLHEF_analysis-*.top')

    elif runtype == 'PY':
        program='main-PYTHIA-lhef'
        logname="log-PY-"
        os.system('echo "nohad 1" >>  powheg.input')
        os.system('rm pwg-*-POWHEG+PYTHIA-output.top')

    elif runtype == 'PY-HAD':
        program='main-PYTHIA-lhef'
        logname="log-PY-HAD-"
        os.system('echo "nohad 0" >>  powheg.input')
        os.system('rm pwg-*-POWHEG+PYTHIA-output.top')
        
    else:
        print "Analysis type not recognized! Abort.."
        exit()    

    for core in range(startseed,startseed+ncore):
        logfile=logname+str(core).zfill(4)+".log"

        subs_qsub={'xxx':str(core).zfill(4),
                   'yyy':logfile,
                   'nnn':runname,
                   'ppp':program,
                   'ttt':str(limittime)}
        
        sed('submit_LHEF.sh','Qsub/submit_'+logfile+'.sh',subs_qsub)        
        os.system('qsub Qsub/submit_'+logfile+'.sh')
        
    return

def run_pwhg_rivetanalysis(runname,runtype,analysis,startseed,ncore,limittime):

    print "***********************************************"
    print " Running analysis: ", runtype
    print "***********************************************"

    if os.path.isfile('powheg.input'):
        os.system('rm powheg.input')

    os.system('cp powheg.input-save powheg.input')
    
    if runtype == 'LHEF':
        program='lhef_analysis'
        logname="log-"
        os.system('rm -f pwgLHEF_analysis-*.top')

    elif runtype == 'PY':
        program='main-PYTHIA-lhef'
        logname="log-PY-"
        os.system('echo "nohad 1" >>  powheg.input')
        os.system('rm -f pwg-*-POWHEG+PYTHIA-output.top')

    elif runtype == 'PY-HAD':
        program='main-PYTHIA-lhef'
        logname="log-PY-HAD-"
        os.system('echo "nohad 0" >>  powheg.input')
        os.system('rm -f pwg-*-POWHEG+PYTHIA-output.top')

    else:
        print "Analysis type not recognized! Abort.."
        exit()    

    for core in range(startseed,startseed+ncore):
        logfile=logname+str(core).zfill(4)+".log"

        subs_qsub={'xxx':str(core).zfill(4),
                   'yyy':logfile,
                   'nnn':runname,
                   'ppp':program,
                   'rrr':analysis,
                   'ttt':str(limittime)}
        
        sed('submit_Rivet.sh','Qsub/submit_Rivet_'+logfile+'.sh',subs_qsub)        
        os.system('qsub Qsub/submit_Rivet_'+logfile+'.sh')
        
    return


def checkjobs(jobs,user,name,dt):

    jobsrunning=True    

    while jobsrunning:

        createjoblist(user,jobs)

        jname=name[0:10].strip()

        if jobs.has_key(jname):
            jnumber=len(jobs[jname])
            
            #for i in range(0,jnumber):
            #    print jobs[jname][i][3]

        else:
            jnumber=0


        if jnumber==0:
            jobsrunning=False
            print "No jobs left."
        else:
            print jnumber, "jobs are still running.."
            jobs = {}
            time.sleep(dt)

    return
