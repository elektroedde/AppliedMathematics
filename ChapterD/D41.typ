#import "../template.typ": *

= D.41
Expand the differential equations to $RR$ so that the boundary conditions are fulfilled.

(a) 
$
  cases(u''(x) - i u(x) = 0"," x > 0, u(0) = 1)
$

(b)
$
  cases(u''(x) - i u(x) = 0", " x > 0, u'(0) = 1)
$
#solution[
  Dirichlet conditions give odd expansion, Neumann conditions give even expansions.

(a)
$
  
  cases(u''(x) - i u(x) = 0", " x > 0, u(0) = 1) arrow (u^-)'' -i u^- = 2 delta'", " x in RR
$

(b)
$
  cases(u''(x) - i u(x) = 0", " x > 0, u'(0) = 1) arrow (u^+)'' - i u^+ = 2 delta", " x in RR
  
$
]