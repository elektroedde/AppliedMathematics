#import "../template.typ": *

= S.13

(a) $r^2 y'' + r y' = 0$

(b) $r^2 y'' + r y' - y = 0$

(c) $r^2 y'' + r y' + r^2 y = 0$

#solution[
  Using a definition that the general solution to Bessel's differential equations 
  $
    u'' + 1/r u' + (lambda - nu^2/r^2)u = 0
  $
  are
  $
    &a J_nu (sqrt(lambda) r) + b Y_nu (sqrt(lambda)r),"   " &&"if" lambda > 0\
    &a r^nu + b r^(-nu), &&"if" lambda = 0, nu != 0\
    &a + b ln r, &&"if" lambda = nu = 0 
  $

  (a) 
  $
    r^2 y'' + r y' = 0 arrow y'' + 1/r y' = 0,"  " lambda = nu = 0\
    ans(y(r) = a + b ln r)
  $

  (b)
  $
    r^2y'' + r y' - y = 0 arrow y'' + 1/r y' - 1/r^2 y = 0, "   " lambda = 0, nu=1\
    ans(y(r) = a r + b/r)
  $

  (c)
  $
    r^2 y'' + r y' + r^2 y = 0 arrow y'' + 1/r y' + y = 0, "   " lambda = 1, nu = 0\
    ans(y(r) = a J_0 (r) + b Y_0 (r))
  $
]