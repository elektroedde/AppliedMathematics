#import "../template.typ": *

= S.15
Determine a non-trivial solution to the eigenvalue problem
$
  -&laplacian u = lambda u, &&" in" Omega\
  &u=0,&&" on" partial Omega
$
where $Omega$ is the circle sector $0<r<1, 0<theta<pi/3$
#solution[
We have the conditions for $u(r, theta)$
$
&u(r,0) = u(r, pi/3) = 0 \
&u(1,theta) = 0
$

The Laplacian in cylindrical coordinates is 
$
  laplacian = dvp(,r,deg:2) + 1/r dvp(,r) +1/r^2 dvp(,theta,deg:2)
$

Expressing $u(r,theta)$ with separation of variables gives
$
  u(r, theta) = R(r) Theta(theta)
$
Putting this into the Laplacian gives
$
  R''Theta + 1/r R'Theta + 1/r^2 R Theta'' = -lambda R Theta\
  arrow.b\
  R''/R + 1/r R'/R + 1/r^2 Theta''/Theta = -lambda\
  arrow.b\
  r^2 R''/R + r R'/R + lambda r^2 =-Theta''/Theta\
  arrow.b\
  r^2/R (R'' + 1/r R' + lambda R) = -Theta''/Theta\
  arrow.b\
  r^2/R (1/r (r R')' + lambda R) = -Theta''/Theta
$
LHS depend only on $r$ while RHS depend only on $theta$, therefore both must be a constant
$
  r^2/R (1/r (r R')' + lambda R) = beta arrow 1/r (r R')' + lambda R = (beta R)/r^2\
  -Theta''/Theta = beta\
  arrow.b\

  


  cases(Theta'' = -beta Theta,   R'' + 1/r R' +R(lambda - beta/r^2 )=0)
$

Solution to $Theta$:
$
  Theta(theta) = A cos(sqrt(beta) theta)+B sin(sqrt(beta) theta)\
  Theta(0) = A arrow A = 0\
  Theta(pi/3) = B sin(sqrt(beta)pi/3) = 0 arrow sqrt(beta)pi/3 = k pi arrow beta =9k^2",  " k=1,2,3dots\
  ans(Theta(theta)= sin(sqrt(beta)theta))
$
Put the $beta$ into the equation for $R(r)$ and we get Bessel's differential equation:
$
  R'' + 1/r R' + (lambda - (9k^2)/r^2)R = 0, nu^2 = 9k^2 arrow nu = 3k
$
This has the solution
$
  R(r) = a_k J_(3k) (sqrt(lambda) r) + b_k Y_(3k) (sqrt(lambda) r)
$
Since $R(r)$ has to be bounded, $b_k = 0$
$
  R(r) = a_k J_(3k)(sqrt(lambda_k)r)\
  R(1) = 0 arrow lambda_k = alpha_(3k,n)^2
$
The full solution is then
$
  ans(u(r, theta) = a_k J_(3k)(a_(3k,n) r) sin(3k theta)\
  lambda_(k n) = a_(3k,n)^2",  " k","n = 1","2","3dots )
$
]
