# vim: ts=3:sw=3:expandtab

def zero_loop(d):
   """
   cancel closed fermion loops
   """
   return d.chord(QUARKS) == d.loopsize()

def gosam_filter(d):
   return (not zero_loop(d))
