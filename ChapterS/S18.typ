#import "../template.typ": *

= S.18
Determine the general solution to

(a) $r^2 y'' + 2 r y' = 0$

(b) $r^2 y'' + 2 r y' - 2y = 0$

(c) $r^2 y'' + 2 r y' + r^2 y = 0$

#solution[
The general solution to the operator 
$
  cal(A) = y'' + 2/r y' + (lambda - (l(l+1/2))/r^2)y
$
is
$
cases(&a j_l (sqrt(lambda)r) +b y_l (sqrt(lambda)r)", " &&lambda > 0,
&a r^l + b r^(-l-1)"," &&lambda = 0"," l != -1/2,
  &(a + b ln(r))/sqrt(r) ", " &&lambda = 0"," l = -1/2)
  
  &
$

(a)
$
  r^2 y'' + 2r y' = 0 arrow y'' + 2/r y' = 0
$
 Here we have $lambda=0, l = 0$, so the solution is:
$
  y(r) = a + b/r
$

(b) 
$
  r^2 y'' + 2r y' - 2y = 0 arrow y'' + 2/r y' - 2/r^2 y = 0\
  arrow.b\
  y'' + 2/r y' +(0 - 2/r^2)y = 0
$
Here we have $lambda = 0, l(l+1) = 2 arrow l = 1$:
$
  y(r) = a r + b/r^2 
$

(c)
$
  r^2 y'' + 2r y' + r^2 y = 0 arrow y'' + 2/r y' + y = 0\
  arrow.b\
  y'' + 2/r y' + (1 - (0dot (0+1))/r^2)y = 0\
$
Here we have $lambda > 0$ and $l = 0 "(or "l = -1)$
$
  y(r) = a j_0 (r) + b y_0 (r)
$
]
