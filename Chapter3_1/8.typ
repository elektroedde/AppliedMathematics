#import "../template.typ": *

= 3A.8
Solve the heat problem 
$
  &dvp(u, t) - dvp(u, x, deg:2) = 0",  " && 0<x<1, t>0\
  &u(x,0) = x"," && 0<x<1
$
with the boundary conditions

(a) 
$
  u(0,t) = u(1,t) = 0",  " t > 0
$

(b) 
$
  dvp(u(0,t),x) = dvp(u(1,t),x) = 0",  " t > 0
$
#solution[
(a) This problem has homogenous Dirichlet conditions, which will give the solution on sinus form.
$
  u(x,t) = sum_(k=1)^infinity u_k (t) sin(k pi x)
$
Putting this into the differential equation and differentiating termwise gives
$
  dvp(u, t) - dvp(u, x, deg:2) = 0 \
  arrow.b\
  sum_(k=1)^infinity (u'_k (t) + k^2 pi^2 u_k (t)) sin(k pi x) = 0 \
  arrow.b\
  u'_k (t) + k^2 pi^2 = 0\
  arrow.b\
  u_k (t) = c_k e^(-k^2 pi^2 t)
$
This gives
$
  u(x,t) = sum_(k=1)^infinity c_k e^(-k^2 pi^2 t) sin(k pi x)
$
and
$
  u(x,0) = x = sum_(k=1)^infinity c_k  sin(k pi x)
$
from which we can determine the coefficients $c_k$.
$
  c_k = 2 integral_0^1 x sin(k pi x) dif x = 2[(-x cos(k pi x))/(k pi)]_0^1 + underbrace(2 integral_0^1 (cos(k pi x))/(k pi) dif x,=0) \
  c_k = (-2 cos(k pi))/(k pi) = 2/(k pi) (-1)^(k+1) \
  c_0 = integral_0^1 x sin(k pi 0) dif x = 0
$
Final solution is 
$
  u(x,t) = 2/pi sum_(k=1)^infinity (-1)^(k+1)/k e^(-k^2 pi^2 t)sin(k pi x)
$

(b) This problem has homogenous Neumann conditions, which will give the solution on cosine form.

$
  u(x,t) = sum_(k=0)^infinity u_k (t) cos(k pi x)
$
Putting into differential equation
$
  sum_(k=0)^infinity (u'_k (t) + k^2 pi^2 u_k (t)) cos(k pi x) = 0\
  arrow.b\
  u'_k (t) + k^2 pi^2 u_k (t) = 0\
  arrow.b\
  u_k (t) = c_k e^(-k^2 pi^2 t)
$

$
  u(x,t) = sum_(k=0)^infinity c_k e^(-k^2 pi^2 t) cos(k pi x)\
  u(x, 0) = x = sum_(k=0)^infinity c_k  cos(k pi x)
$
From this we can determine the coefficients $c_k$
$
  c_k = 2 integral_0^1 x cos(k pi x) dif x = -2 integral_0^1 (sin(k pi x))/(k pi) dif x =\
  = 2[(cos(k pi x))/(k^2 pi^2)]_0^1 = (2 cos(k pi))/(k^2 pi^2 ) - 2/(k^2 pi^2) = 2/(k^2 pi^2) ((-1)^k - 1)\
  c_0 = integral_0^1 x cos(k pi 0) dif x = 1/2
$
This gives our final solution as 
$
  u(x,t) = 1/2 + 2/pi^2 sum_(k=1)^infinity ((-1)^k - 1)/k^2 e^(-k^2 pi^2 t) cos(k pi x)
$
]
