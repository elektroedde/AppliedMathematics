#import "../template.typ": *

= 3A.7
A thin rod with closed ends has length $L = 1$. In the rod is air mixed with gas. Initially, the gas concentration is $q$ in the left half of the rod, and 0 in the right half of the rod. Diffusion constant is set to $D=1$. There is no source inside the rod. Write down a mathematical model and solve the problem.
#solution[
Using the diffusion equation
$
  &dvp(u,t) - dvp(u,x,deg:2) = 0"," &&0<x<1, t>0\
  &dvp(u(0,t),x) = dvp(u(1,t),x) = 0"," && t > 0\
  &u(x,0) = cases(q", " &0<x<1/2, 0"," &1/2<x<1)\

$
We have homogenous Neumann conditions, which will give the solution on the form of a cosine series expansion. 
$
  u(x,t) = sum_(k=0)^infinity u_k (t) cos(k pi x)
$
Putting this into the differential equation and differentiating termwise gives
$
  dvp(u,t) - dvp(u,x,deg:2) = 0\
  arrow.b\
  sum_(k=0)^infinity (u'_k (t) + k^2 pi^2 u_k (t)) cos(k pi x) = 0\
  arrow.b\
  u'_k(t) + k^2 pi^2 u_k (t) = 0\
  arrow.b\
  u_k (t) = c_k e^(-k^2 pi^2 t)
  $

  This gives the solution on the form
  $
    u(x,t) = sum_(k=0)^infinity c_k e^(-k^2 pi^2 t) cos(k pi x)
  $
  and we only need to determine the coefficients $c_k$, which is done by the initial value $u(x,0)$. We want to expand the function $u(x,0)$ as a cosine series
  $
    u(x,0) = sum_(k=0)^infinity c_k cos(k pi x)\
    arrow.b\
    c_k = 2 integral_0^(1/2) q cos(k pi x) dif x = 2 [(q sin(k pi x))/(k pi)]_0^(1/2) = (2q sin((k pi) /2))/(k pi)\
    c_0 = integral_0^(1/2) q dif x = q/2
  $
  Final solution is then
  $
    u(x,t) = q/2 + (2q)/pi sum_(k=1)^infinity (sin((k pi)/2))/k e^(-k^2 pi^2 t) cos(pi k x)
  $
]
