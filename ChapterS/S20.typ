#import "../template.typ": *

= S.20
Let $Omega =$ unit sphere in $RR^3$,
$
  cal(A) = -laplacian\
  D_(cal(A)) = {u in C^2 (Omega) | u = 0 "on" partial Omega} .
$

(a) Determine the radial ($theta, phi.alt$ independent) eigenfunctions and eigenvalues.

(b) Expand the function $1(x,y,z) eq.triple 1$ using eigenfunctions to $cal(A)$ .
#solution[
The radial component of the Laplacian in spherical coordinates is 
$
  laplacian_r = u'' + 2/r u'
$
So we want to solve 
$
  cal(A) u = lambda u arrow -laplacian_r u = lambda u \
  arrow.b\
  u'' + 2/r u' + lambda u = 0\
  arrow.b\



u'' + 2/r u' + (lambda - (l(l+1))/r^2) u = 0
$
Here we have $lambda > 0$ and $l = 0$ and we use the general solution to this and get 
$
  u(r) = a j_0 (sqrt(lambda)r) + b y_0 (sqrt(lambda)r)
$
Since $u(r)$ has to be bounded at $r=0$, the $y_0 (sqrt(lambda)r)$-term has to disappear, so $b = 0$ and our final solution is 
$
  u(r) = a j_0 (sqrt(lambda)r)
$
The eigenvalues can be found from
$
  u(1)=0 arrow a j_0 (sqrt(lambda)) = 0
$
which means $sqrt(lambda)$ has to make $j_0 = 0$. But $j_0 (sqrt(lambda)r) = sin(sqrt(lambda)r)/(r)$ so that gives
$
  sqrt(lambda) = k pi\
  arrow.b\
   ans(lambda_k = k^2 pi^2 )
$
and the eigenfunctions are 
$
  ans(phi_k (r) = sin(k pi r)/r)
$

(b)
$
  1 = sum_(k=1)^infinity c_k phi_k (r)
$
$
  c_k = innerp(phi_k,1)/innerp(phi_k, phi_k) = (integral_0^1 r sin(k pi r) dif r)/(integral_0^1 sin^2(k pi r) dif r) = ([(-r cos(k pi r))/(k pi)]_0^1 + underbrace(integral_0^1 (cos(k pi r))/(k pi) dif r, =0))/( integral_0^1 (1/2 - underbrace((cos(2 k pi r))/2, integral =" "0))dif r) = \
  = -2 (cos(k pi))/(k pi) arrow ans(c_k = 2/(k pi)  (-1)^(k+1))
$
]
