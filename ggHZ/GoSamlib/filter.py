# vim: ts=3:sw=3:expandtab

def myfilter(d):
   return d.vertices([H], LEPTONS, LEPTONS) == 0 and \
          d.vertices([chi], LEPTONS, LEPTONS) == 0 and \
          d.vertices([H], [B], [Bbar]) == 0 and \
          d.vertices([chi], [B], [Bbar]) == 0


def filter_withb(d):
   return d.vertices([H], LEPTONS, LEPTONS) == 0 and \
          d.vertices([chi], LEPTONS, LEPTONS) == 0
