#import "../template.typ": *


= H.15

$
  innerp(u, v) = infint u(x)v(x) e^(-x^2)/sqrt(pi) dif x
$
Determine the first three Hermite polynomials

#solution[
    Using Grahm-Schmidt with $u_n = [1, x, x^2]$
$
  phi_0 = 1 \
  innerp(phi_0, phi_0) = infint e^(-x^2)/sqrt(pi) dif x = 1 \
  psi_0 = phi_0/innerp(phi_0, phi_0)^(1/2) = 1
$

Next
$
  phi_1 = u_1 - projection(phi_0, u_1) = u_1 - projectionfull(phi_0, u_1) = x - projectionfull(1, x) = \
  x - underbrace(infint x e^(-x^2)/sqrt(pi) dif x , = 0 "(odd function)")= x \
  psi_1 = phi_1 / innerp(phi_1, phi_1)^(1/2) = x / innerp(x, x)^(1/2) \
  innerp(x,x) = infint x^2 e^(-x^2)/sqrt(pi) dif x = -1/(2sqrt(pi)) infint (x) (-2x e^(-x^2)) =\
   = -1/(2sqrt(pi))([x e^(-x^2)]_(-infinity)^infinity - infint e^(-x^2) dif x) = 1/2
$
Finally this gives 
$
  psi_1 = x/innerp(x, x)^(1/2) = sqrt(2) x
$

Next
$
  phi_2 = u_2 - projection(phi_0","phi_1, u_2) = x^2 - projectionfull(1, x^2) - projectionfull(x, x^2) =\
  = x^2 - infint x^2 e^(-x^2)/sqrt(pi) dif x - underbrace(infint x^3 e^(-x^2)/sqrt(pi) dif x,=0 "odd function") = x^2 - 1/2 \
  psi_2 = phi_2 / innerp(phi_2, phi_2)^(1/2) = (x^2 - 1/2)(infint (x^2 - 1/2)^2 e^(-x^2)/sqrt(pi) dif x)^(-1/2) = \
    = (x^2 - 1/2) (infint (x^4 - x^2 + 1/4)e^(-x^2)/sqrt(pi) dif x )^(-1/2) \
    "(i)" infint 1/4 e^(-x^2)/sqrt(pi) dif x = ans(1/4)\
    "(ii)" infint -x^2 e^(-x^2)/sqrt(pi) dif x = ans(-1/2)\

    "(iii)" infint x^4 e^(-x^2)/sqrt(pi) dif x = -1/(2sqrt(pi)) infint (x^3)(-2x e^(-x^2)) dif x = \
    = underbrace([x^2 e^(-x^2)]_(-infinity)^infinity, =0) - underbrace(infint 3 x^2 e^(-x^2) dif x, = (3sqrt(pi))/2) = ans(3/4)
$

So 
$
  psi_2 = (x^2 - 1/2)(1/4 - 1/2 + 3/4)^(-1/2) = (x^2 - 1/2)sqrt(2)
$
The three first orthonormal Hermite polynomials are
$
  psi_0 = ans(1) \
  psi_1 = ans(sqrt(2)x) \
  psi_2 = ans(sqrt(2)(x^2-1/2))
$


]