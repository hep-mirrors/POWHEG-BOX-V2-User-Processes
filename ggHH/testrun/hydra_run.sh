# @ shell=/bin/bash
#
# Sample script for LoadLeveler
#
# @ error = job.err.$(jobid)
# @ output = job.out.$(jobid)
# @ job_type = parallel
# @ node_usage= not_shared
# @ node =1
# @ tasks_per_node = 1
# @ resources = ConsumableCpus(16)
# @ node_resources = ConsumableMemory(56gb)
# @ network.MPI = sn_all,not_shared,us
# @ wall_clock_limit = 00:10:00
# @ notification = complete
# @ notify_user = $(user)@mpp.mpg.de
# @ queue

module unload intel
module load gcc/5.4 boost/gcc/1.61 python27/python/2.7 python27/scipy/2015.10 autotools/2015-03

poe ./run.sh > run.out

