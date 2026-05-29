#import "../template.typ": *

= S.11
$
  dv(,x)((J_nu (x))/x^nu) = - (J_(nu+1)(x))/x^nu
$

(b) Use (a) and
$
  J_(1/2)(x) = sqrt(2/(pi x)) sin x
$
to calculate $J_(3/2)(x)$

(c) Show that $J'_0(x) = -J_1(x)$

#solution[
  The power series is 
  $
    J_nu (x) = (x/2)^nu sum_(k=0)^infinity 1/(k!Gamma(nu + k + 1))(- x^2/4)^k\
    arrow.b\
    (J_nu (x))/x^nu = (1/2)^nu sum_(k=0)^infinity 1/(k!Gamma(nu + k + 1))(- x^2/4)^k
  $
  This can be differentiated termwise as
  $
    dv(,x)((J_nu (x))/x^nu) = (1/2)^nu sum_(k=0)^infinity (-2x k)/(4k!Gamma(nu + k + 1))(- x^2/4)^(k-1) = \
    = -x/2 (1/2)^nu sum_(underbrace(k=1,"*"))^infinity 1/((k-1)!Gamma(nu + k + 1))(- x^2/4)^(k-1) = \
    = -1/x^nu (x/2)^(nu+1) sum_(k=1)^infinity 1/((k-1)!Gamma(nu + k + 1))(- x^2/4)^(k-1) arrow [k arrow k+1] arrow\
    arrow -1/x^nu (x/2)^(nu+1) sum_(k=0)^infinity 1/(k!Gamma(nu + 1 + k + 1))(- x^2/4)^k = ans(-(J_(nu + 1)(x))/x^nu)
  $

  \* (The k=0 contribution is zero, since it is a constant and was differentiated.)

  (b)Setting $nu = 1/2$ we get
  $
    dv(,x) ((J_(1/2)(x))/x^(1/2)) = - (J_(3/2)(x))/x^(1/2)
  $
  $
    dv(,x) ((J_(1/2)(x))/x^(1/2)) = dv(,x)((sqrt(2/(pi x)) sin x)/x^(1/2)) = dv(,x) (sqrt(2/pi)(sin x)/x) = sqrt(2/pi) (-1/x^2 sin x + 1/x cos x)\
    arrow.b\
    J_(3/2)(x) = x^(1/2) sqrt(2/pi)((sin x)/x^2 - x/x^2 cos x) = sqrt(2/pi)x^(3/2)((sin x - x cos x)/x^3)  
  $

  (c) Using the result from (a)
  $
    dv(,x)((J_0(x))/x^0) = - (J_1(x))/x^0 arrow ans(J_0'(x) = -J_1(x))
  $
]