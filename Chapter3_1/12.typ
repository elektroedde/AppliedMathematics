#import "../template.typ": *

= 3A.12
Solve the oscillation problem
$
  &dvp(u,t,deg:2) + 2 dvp(u,t) - dvp(u,x,deg:2) = 0", " && 0<x<1, t>0\
  &u(0,t) = u(1,t) = 0"," &&t>0\
  &u(x,0) = 1"," && 0 < x < 1\
  &dvp(u(x,0),t) = 0"," && 0 < x < 1
$
#solution[
We have homogenous Dirichlet conditions which will give the solution on sinus form
$
  u(x,t) = sum_(k=1)^infinity u_k (t) sin(k pi x)
$
Insert into differential equation and differentiate termwise
$
  sum_(k=1)^infinity ( u''_k (t) + 2u'_k (t) +k^2 pi^2 u_k (t))sin(k pi x) = 0\
  arrow.b\
  u''_k (t) + 2u'_k (t) +k^2 pi^2 u_k (t)
$
Solving the characteristic equation with $u_k = r e^t$
$
  r^2 + 2r + k^2 pi^2 = 0\
  arrow.b\
  r = -1 +- sqrt(1-k^2 pi^2 ) = -1 plus.minus i sqrt(k^2 pi^2 - 1) = -1 plus.minus i omega_k\
  arrow.b\
  u_k (t) = e^(-t)(a_k cos(omega_k t)+b_k sin(omega_k t))
$
Gives the solution as
$
  u(x,t) = sum_(k=1)^infinity e^(-t)(a_k cos(omega_k t)+b_k sin(omega_k t)) sin(k pi x)
$

$
  u(x,0) = 1 =sum_(k=1)^infinity a_k sin(k pi x)\
  arrow.b\
  a_k = 2 integral_0^1 sin(k pi x) dif x = 2[(-cos(k pi x))/(k pi)]_0^1 = (-2 cos(k pi))/(k pi) + 2/(k pi) arrow ans(a_k = 2/(k pi)(1-(-1)^k))
  \
  \
  \

  dvp(u(x,0),t) = 0 =\
  =sum_(k=1)^infinity (-e^(-t)(a_k cos(omega_k t)+b_k sin(omega_k t)) + e^(-t)(-a_k omega_k sin(omega_k t) + b_k omega_k cos(omega_k t))) sin(k pi x) = \
  = sum_(k=1)^infinity (-a_k + omega_k b_k) sin(k pi x) = 0\
  arrow.b\
  -a_k + omega_k b_k = 0 arrow ans(b_k = a_k/omega_k = 2/(omega_k k pi)(1-(-1)^k))
$

Full solution:
$
  ans(u(x,t) = 2/pi sum_(k=1)^infinity e^(-t) (1-(-1)^k)/k (cos(omega_k t) + sin(omega_k t)/omega_k)sin(k pi x))
$
]
