#import "../template.typ": *

= 3A.5
Solve the heat problem
$
  &dvp(u, t) - dvp(u,x,deg:2) = 0", " && 0 < x < 1, t > 0\
  &u(0,t) = u(1,t) = 0", " && t > 0\
  &u(x,0) = sin(pi x) + 2 sin(3 pi x)", " && 0 < x < 1
$
#solution[
We have homogenous Dirichlet conditions, which should give our solution in the form of a sinus series. We can therefore express our solution in an infinite sum 
$
  u(x, t) = sum_(k=1)^infinity u_k (t) sin((k pi x)/L)
$
with $L = 1$. Using this expression we can differentiate termwise and put into the differential equation, resulting in
$
  dvp(u, t) - dvp(u,x,deg:2) = 0\
  arrow.b\
  sum_(k=1)^infinity underbrace((u'_k (t) + k^2 pi^2 u_k(t)),=0)sin(k pi x) = 0\
  arrow.b\
  u'_k (t) + k^2 pi^2 u_k(t) = 0\
  arrow.b\
  u_k (t) = c_k e^(-k^2 pi^2 t)
$
This gives our function $u(x,t)$ as 
$
  u(x, t) = sum_(k=1)^infinity c_k e^(-k^2 pi^2 t) sin(k pi x)
$
and using our initial conditions for $u(x,0)$, we can determine the coefficients $c_k$:
$
u(x, 0) = sum_(k=1)^infinity c_k sin(k pi x) = sin(pi x) + 2 sin(3 pi x)\
arrow.b\
c_k = cases(1",   " &k=1, 2"," &k=3, 0"," &"otherwise")
$
This gives the final solution
$
  u(x,t) = e^(-pi^2 t)sin(k pi x) + 2e^(-9 pi^2 t)sin(3 pi x)
$

]
