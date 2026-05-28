#import "../template.typ": *

= 
A string with length 1. A force $F$ acts on the string at a point, distance $a$ from the strings left end. The force is perpendicular to the string. No other external forces act on the string. Write out the differential equation and boundary conditions for the strings stationary and solve the problem.
#solution[

$
  dvp(u,t,deg:2) - S dvp(u, x, deg:2) = F delta(x-a)\
  u(0,t)=u(1,t) = 0
$

Since we are looking for the stationary solution, $dvp(u,t,deg:2) = 0$ and we have

$
  -dvp(u, x, deg:2) = F/S delta(x-a)
$
Integrating both sides twice gives 
$
  - u(x,t) = F/S (x-a) theta(x-a)  + A x + B
$
Now check the boundary conditions for this expression:
$
  u(0,t) = underbrace(F/S (-a)theta(-a), = 0 "since" a > 0) + B = 0 arrow B = 0\
  \
  u(1, t) = F/S (a-1)theta(1-a)+A = 0 arrow A = F/S (1-a) \
$

$
  u(x,t) = F/S ((x(1-a)+(a-x)theta(x-a))
$
]