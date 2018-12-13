#! /usr/bin/env python
##
##  Author(s):
##   Simone Alioli
##
"""\
Usage: %prog [options] file1.top [file2.top ...]

TODO
 * Implement on-the-fly rebinning of histograms
 * Explore different color codes for better visibility
 *
"""
# uncomment to turn on debugger
#import pdb
#pdb.set_trace()
import math as m
import copy
import os,sys,logging,time
import re
import numpy as np
import cStringIO
import collections as cl
from collections import Iterable

import matplotlib
matplotlib.use('Agg')
from matplotlib import pyplot as plt
from matplotlib import gridspec
from matplotlib import ticker as mticker
from matplotlib import rc
#rc('font',**{'family':'sans-serif','sans-serif':['Helvetica']})
## for Palatino and other serif fonts use:
#rc('font',**{'family':'serif','serif':['Palatino']})


def saveFigure(fig, path, ext='png', close=True):
    """Save a figure from pyplot.

    Parameters
    ----------
    fig : matplotlib.figure
        The figure object to be saved

    path : string
        The path (and filename, without the extension) to save the
        figure to.

    ext : string (default='png')
        The file extension. This must be supported by the active
        matplotlib backend (see matplotlib.backends module).  Most
        backends support 'png', 'pdf', 'ps', 'eps', and 'svg'.

    close : boolean (default=True)
        Whether to close the figure after saving.  If you want to save
        the figure multiple times (e.g., to multiple formats), you
        should NOT close it in between saves or you will have to
        re-plot it.

    """

    # Extract the directory and filename from the given path
    directory = os.path.split(path)[0]
    filename = "%s.%s" % (os.path.split(path)[1], ext)
    if directory == '':
        directory = '.'

    # If the directory does not exist, create it
    if (not os.path.exists(directory)) and (not os.path.isdir(directory)):
       logging.error("Directory %s does not exist"%directory)

    # The final path to save to
    savepath = os.path.join(directory, filename)

    logging.debug("Saving figure to '%s'..." % savepath)

    # Actually save the figure
    fig.savefig(savepath,dpi=fig.dpi)

    # Close it
    if close:
        plt.close()

    logging.debug("Done with '%s'"%path)


import pylab

class LogFormatterTeXExponent(pylab.LogFormatter, object):
    """Extends pylab.LogFormatter to use
    tex notation for tick labels."""

    def __init__(self, *args, **kwargs):
        super(LogFormatterTeXExponent,
              self).__init__(*args, **kwargs)

    def __call__(self, *args, **kwargs):
        """Wrap call to parent class with
        change to tex notation."""
        label = super(LogFormatterTeXExponent,
                      self).__call__(*args, **kwargs)
        label = re.sub(r'e(\S)0?(\d+)',
                       r'\\times 10^{\1\2}',
                       str(label))
        label = "$" + label.replace('--','-') + "$"
        return label

import fnmatch

def isFinite(s):
   return s != "nan" and s != "-nan" and s != "inf" and s != "-inf"

def ImageTag(plot):
   '''
   Returns a HTML command to include an image on a webpage.
   '''
   return '<div style=\"float:left; font-size:smaller; font-weight:bold;\">'+'\n'+'<a href=\"#'+plot+'\">&#9875;</a> '+plot.rpartition('.')[0]+':<br>'+'\n'+'<a name=\"'+plot+'\"><a href=\"'+plot+'\">'+'\n'+'<img HEIGHT=400 src=\"'+plot+'\">'+'\n'+'</a></a>'+'\n'+'</div>'+'\n'

def WriteHTML(outdir, obslist, analyzerfiles, ext='png'):
   '''
   Write the output HTML file for a given set of plots
   '''
   # open file
   HTMLfile = open(outdir+'/index.html','w')
   # headers
   HTMLfile.write('<html>'+'\n')
   # title
   HTMLfile.write('<head>')
   HTMLfile.write('<title> '+outdir+' </title>'+'\n')
   HTMLfile.write('<style> \n  html { font-family: sans-serif; } \n  img { border: 0; } \n  a { text-decoration: none; font-weight: bold; } \n </style></head>'+'\n')
   HTMLfile.write('<body bgcolor=white>'+'\n')
   HTMLfile.write('<h1> '+outdir+'</h1>')
   # date
   import datetime
   from dateutil.tz import tzlocal
   now = datetime.datetime.now(tzlocal())
   fmt = now.strftime('%Y-%m-%d at %H:%M:%S %Z')
   HTMLfile.write('<em>This page was created on ' + fmt  + '.</em>\n')

   HTMLfile.write('<h3> Plots  </h3>'+'\n')
   HTMLfile.write('<div>'+'\n')
   # look in outdir and find all png files
   files = os.listdir(outdir)
   plots = []
   for file in files:
      if fnmatch.fnmatch(file,"*"+ext):
         plots.append(file)
   # plots
   for obs in obslist:
      if not any(obs.replace(" ","_") in plt for plt in plots):
         sys.stderr.write("Could not find plot for "+obs+'\n')
      else:
         HTMLfile.write(ImageTag(obs.replace(" ","_")+"."+ext))
   HTMLfile.write('</div>'+'\n')
   # footers
   HTMLfile.write('</body>'+'\n')
   HTMLfile.write('</html>'+'\n')
   # close file
   HTMLfile.close()


class TDHist:
  def fromfile(self,f):
    title=''
    while True:
       line=f.readline()
       if line=='':
          return
       if re.search('#',line)!=None:
          title=re.sub('#',' ',line)
          title=re.sub('index',' ',line)
          title=re.sub('  *',' ',title)
          title=title.split()[1]
          sio=cStringIO.StringIO()
          while True:
            last_pos = f.tell()
            line=f.readline()
            if re.search("#", line)!=None or not line:
              f.seek(last_pos)
              break
            if len(line)>2:
              sio.write(line)
            if sio.tell()>0:
              sio.seek(0)
              self.hdata[title]=np.loadtxt(sio,comments='(')
              self.rdata[title]=np.transpose(self.hdata[title])
          sio.close()

  def __init__(self,f=None):
    self.hdata=cl.OrderedDict()
    self.rdata=cl.OrderedDict()
    if f:
      self.fromfile(f)


####################
if __name__ == '__main__':

   ## Find number of cpu cores
   import multiprocessing
   try:
      numcores = multiprocessing.cpu_count()
   except NotImplementedError:
      numcores = 1

   from argparse import ArgumentParser

   parser = ArgumentParser(description='Creates plots from POWHEG gnuplot output files and organizes them in a HTML webpage for an easy visualization of results.')
   parser.add_argument('inputfiles', nargs='+', metavar='pwgNLO.top',
                   help='One or more analyzer input files (local or remote). When more than one input file is given, a comparison plot between them is created.')
   parser.add_argument("-o", "--output", dest="OUTPUT", default="plots", help="name of directory for output plots [plots]")
   parser.add_argument("-f", "--format", dest="FORMAT", default="default", help="output format for plots [PNG]")
   parser.add_argument("-s","--show", action='store_true', dest="SHOW", default=False, help="show results in default web browser [NO]")
   parser.add_argument("-w","--overwrite", action='store_true', dest="OVERWRITE", default=False, help="overwrite existing plots [NO]")
   parser.add_argument("-n", "-j", "--num-threads",action="store", dest='NUM_THREADS', type=int, default=numcores, help="max number of threads to be used [%s]" % numcores)
   parser.add_argument("-a", "--alpha", action="store", dest='ALPHA_BAND', type=float, default=0.2, help="transparency of error bands [0.2]")
   parser.add_argument("-v", "--verbose", action="store_const", const=logging.DEBUG, dest="LOGLEVEL", default=logging.INFO, help="print debug (very verbose) messages [NO]")
   parser.add_argument("-q", "--quiet", action="store_const", const=logging.WARNING, dest="LOGLEVEL", default=logging.INFO, help="be very quiet [NO]")
   args = parser.parse_args()
   logging.basicConfig(level=args.LOGLEVEL, format="%(message)s")
   filenames = args.inputfiles
   outdir=args.OUTPUT
   logging.debug('Saving output to directory %s'%outdir)

   import urllib2

   refFile=filenames[0]
   # first looks locally, if not found tries remotely
   if (not os.path.exists(filenames[0])) and (not os.path.isfile(filenames[0])):
      try:
         request = urllib2.Request(filenames[0], headers={"Accept" : "application/xml"})
         refFile = urllib2.urlopen(request)
      except urllib2.URLError as e:
         logging.error(e.reason())
         sys.exit(2)
   logging.info('Loading %s',filenames[0])

   # define colors
   if (len(filenames) < 8):
      color_cycle = ['b', 'r', 'g', 'c', 'm', 'y', 'k']
   else:
      colormap = plt.cm.rainbow
      color_cycle = [colormap(i) for i in np.linspace(0, 0.9, len(filenames))]


   if os.path.exists(outdir) and os.path.isdir(outdir):
      if args.OVERWRITE==False:
         logging.error("Output directory "+outdir+" already existing.\n")
         logging.error("Call again with options -w or --overwrite to overwrite it.\n")
         sys.exit(2)
      else:
         import shutil
         shutil.rmtree(outdir)
         os.makedirs(outdir)
   else:
      if os.path.exists(outdir):
         logging.error(outdir+" exists but is not a valid directory.\n")
         logging.error("Please check your inputs.\n")
         sys.exit(2)
      else:
         os.makedirs(outdir)
   os.system("chmod 755 "+ outdir)
   if args.FORMAT == "default":
      args.FORMAT = "png"

   rs = []
   analyzerfiles= []
   for c,rfile in enumerate(filenames):
      # first looks locally, if not found tries remotely
      response=rfile
      if (not os.path.exists(rfile)) and (not os.path.isfile(rfile)) :
         try:
            request = urllib2.Request(rfile, headers={"Accept" : "application/xml"})
            response = urllib2.urlopen(request)
            analyzerfiles.append(rfile)
         except urllib2.URLError as e:
            logging.error(e.reason())
            sys.exit(2)
      else:
         analyzerfiles.append(os.path.abspath(rfile))
      logging.info('Processing %s',rfile)
      file=open(rfile,'r')
      rs.append(TDHist(file))
      file.close()

   for tit in rs[0].rdata.keys():
      fig=plt.figure(figsize = (10,10), dpi=100)
      ax1=plt.subplot2grid((5,4),(0,0),colspan=4,rowspan=4)
      ax2=plt.subplot2grid((5,4),(4,0),colspan=4,rowspan=1,sharex=ax1)
      ax1.grid(True,which='both', axis='both',alpha=0.2)
      ax2.grid(True,which='both', axis='both',alpha=0.2)
      y_min=sys.float_info.max
      y_max=-y_min
      numFound=0
      for i in range(0,len(rs)):
          if tit in rs[i].rdata:
              numFound+=1
              logging.info("Found plot "+tit.rstrip("\n")+" in "+filenames[i].rstrip("\n"))
              data=rs[i].rdata[tit]
              (xl,xh,y,erry)=data
              if numFound == 1:
                  valueRef=y
                  errorRef=erry
              legendEntry=filenames[i].rstrip("\n")
              line=ax1.plot(np.transpose([xl,xh]).flatten(),np.transpose([y,y]).flatten(),linewidth=0.7,label=legendEntry, c=color_cycle[i])
              ax1.errorbar(0.5*(xl+xh), y, yerr = erry , fmt="none", capsize=1, elinewidth=0.3, ecolor=color_cycle[i])

              low_envelope =  np.minimum.reduce(y)
              high_envelope = np.maximum.reduce(y)

              y_min = min(y_min,0.8*np.floor(np.array(low_envelope).min()))
              y_max = max(y_max,1.2*np.ceil(np.array(high_envelope).max()))
              if isinstance(y, Iterable):
                  value_ratio=[x/y -1.0 if y!=0.0 else 0.0  for (x,y) in zip(y,valueRef)]
                  error_ratio=[x/y if y!=0.0 else 0.0  for (x,y) in zip(erry,valueRef)]
              else:
                  value_ratio = (y/valueRef)-1.0 if valueRef!=0.0 else 0.0
                  error_ratio = (erry/valueRef) if valueRef!=0.0 else 0.0

              ax2.plot(np.transpose([xl,xh]).flatten(),np.transpose([value_ratio,value_ratio]).flatten(),lw=0.7,c=color_cycle[i])
              ax2.errorbar(0.5*(xl+xh), value_ratio, yerr=error_ratio, fmt="none", capsize=1, ecolor=color_cycle[i], elinewidth=0.3)
              #plt.rc('text', usetex=True)
              if numFound > 0:
                  leg=ax1.legend(loc='best',fancybox=True)
                  leg.get_frame().set_alpha(0.5)
              if (y_min >= 0 and y_max > 0) :
                  ax1.set_yscale("log", nonposy='clip',subsy=[1,2,5])
                  ax1.yaxis.set_major_locator(mticker.LogLocator())
                  ax1.yaxis.set_minor_locator(mticker.LogLocator(subs=[1.0,2.0,3,0,4.0,5.0,6.0,7.0,8.0,9.0]))
                  ax1.set_ylim(y_min,y_max)
              #ax1.set_ylabel(r'$d \sigma /d x \ [\rm{pb/unit}]$')
              ax1.tick_params(axis='x',labelbottom='off')
              ax2.set_ylabel(r'frac. diff.')
              ax2.set_xlabel(tit, fontsize = 30)
              plt.subplots_adjust(hspace=0.0)
              plt.tight_layout(h_pad=0.0)
              outfile=outdir+"/"+tit.replace(" ","_")
              saveFigure(fig,outfile,args.FORMAT)


   WriteHTML(outdir,rs[0].rdata.keys(),analyzerfiles,args.FORMAT)

   # show the results
   if args.SHOW:
      import webbrowser
      webbrowser.open(outdir+"/index.html")
