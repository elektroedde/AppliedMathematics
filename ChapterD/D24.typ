#import "../template.typ": *

= D.24
#solution[
Diffusion,
$
  &dvp(u,t) - D dvp(u,x,deg:2) = 0"," &&0<x<L, t>0\
  &dvp(u(0,t), x) = dvp(u(L, t), t) = 0",  " &&t>0\
  &u(x,0) = M delta_(L/2)"," &&0<x<L
$

We have homogenous Neumann boundary conditions, which should give us a solution in the form of a cosine series expansion.

$
  u(x,t) = sum u_k (t) cos((k pi x)/L)
$
Differentiating termvise and putting into the differential equation gives
$
  sum (u'_k (t) + alpha u_k (t))cos((k pi x)/L)=0",  " alpha = (D k^2 pi^2)/L^2 \
  arrow.b\
  u'_k (t) + alpha u_k (t) = 0\
  arrow.b\
  u_k (t) = c_k e^(-alpha t)
$

We can also expand $u(x,0) = M delta_(L/2)$ in a cosine series, to get the coefficients, $u_k (0) = c_k$
$
  u(x,0) = M delta_(L/2) = sum a_k cos((k pi x)/L)\
  \
  c_0 = 1/L integr(0, L, M delta_(L/2), x) = M/L\
  c_k = 2/L integr(0,L,M delta_(L/2)cos((k pi x)/L),x) = (2 M)/L cos((k pi)/2) = ", " k=1,2,3dots
$

This gives the full solution
$
  ans(u(x,t)= M/L (1 + 2 sum_(k=1)^infinity cos((k pi)/2)e^(-alpha t) cos((k pi x)/L)))
$
]