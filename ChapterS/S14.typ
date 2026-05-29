#import "../template.typ": *

= S.14
$
  cal(A) u = -1/x (x u')'\
  D_cal(A) = {u in cal(C)^2(I) | u "bounded near"  0, u'(2) = 0}
$

(a) Determine a scalar product in which $cal(A)$ is symmetric and positive semidefinite

(b)
Determine the eigenvalues and eigenvectors of $cal(A)$.

(c) Determine numerically the three lowest eigenvalues.

(d) Let $u(x) = x$. Write down $u$'s expansion in eigenfunctions to $cal(A)$. The coefficients should be given in integral form.

#solution[
  (a)
  $
    innerp(u, cal(A) v) = integral_0^2 overline(u(x)) cal(A) v(x) w(x) dif x
  $
  with $w(x) = x$
  $
    innerp(u, cal(A) v) = -integral_0^2 overline(u) (x v')' dif x = -underbrace([overline(u) (x v')]_0^2,=0) + integral_0^2 (overline(u') x) v' dif x = \
    = underbrace(integral_0^2 (x overline(u'))v' dif x, ="(*)") = underbrace([(x overline(u'))v]_0^2,=0) - integral_0^2 (x overline(u'))' v dif x = ans(innerp(cal(A) u, v))
  $
  To show that it's positive semidefinite, start from (\*) and set $u=v$:
  $
    integral_0^2 x overline(u')u' dif x = integral_0^2 x abs(u')^2 dif x >= 0
  $

  (b) Setting
  $
    cal(A) u = lambda u arrow -1/x (x u')' = -1/x (u' + x u'') = lambda u\
    arrow.b\
    -1/x x u'' - 1/x u' - lambda u = 0 arrow u'' + 1/x u' + lambda u = 0
  $
  which has the solutions (according to the definition of the Bessel's differential equation solutions):
  $
    &a J_0(sqrt(lambda)x) + b Y_0(sqrt(lambda)x), "   " &&lambda > 0, nu=0 \
    &a + b ln r,"   " &&lambda = nu = 0
  $
  Since $Y_0$ is unbounded near $x=0$, $b$ has to be zero to fulfill the requirement of $u$ being bounded near zero.

  $
    u(x) = a J_0(sqrt(lambda)x) \
    u'(2) = sqrt(lambda) a J'_0(sqrt(lambda)2) = 0
  $
  This gives $lambda_0 = 0$. The rest of the eigenvalues are given by
  $
    J'_0(2sqrt(lambda_k)) = 0 arrow lambda_k = (beta_(0,k)/2)^2
  $
  The eigenfunctions are then given by
  $
    phi_k(x) = J_0 (beta_(0,k)/2 x)
  $

  (c) 
  $
    lambda_0 = 0\
    lambda_1 = (3.8317/2)^2 = 3.67\
    lambda_2 = (7.0156/2)^2 = 12.31
  $
]