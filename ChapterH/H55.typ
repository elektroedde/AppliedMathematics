#import "../template.typ": *

Operator 
$
  cal(A) = - laplace = - dvp(, x, deg: 2) - dvp(, y, deg:2)
$

#solution[
  $
    innerp(u, cal(A) v) = integral_(0)^a integral_0^b overline(u)(-bis(v, x) - bis(v, y)) dif x dif y = \
    "(1)"= -integral_(0)^b underbrace((integral_0^a overline(u) bis(v, x) dif x), "(i-x)") dif y - integral_(0)^a underbrace((integral_0^b overline(u)bis(v, y) dif y), "(i-y)") dif x \
    \
    "(i-x)" = underbrace([overline(u) prim(v, x)]_0^a,=0) - integral_0^a prim(overline(u), x) prim(v, x) dif x\
    \
    "(i-y)" = underbrace([overline(u) prim(v, y)]_0^b,=0) - integral_0^b prim(overline(u), y) prim(v, y) dif y\
    arrow.b \
    "(1)" = integral_0^b underbrace((integral_0^a prim(overline(u), x) prim(v, x) dif x), "(ii-x)") dif y + integral_0^a underbrace((integral_0^b prim(overline(u), y) prim(v, y) dif y),"(ii-y)") dif x = "(***)" \
    \
    "(ii-x)" = underbrace([prim(overline(u), x)prim(v, x)]_0^a, = 0) - integral_0^a bis(overline(u), x) v dif x \
    "(ii-y)" = underbrace([prim(overline(u), y)prim(v, y)]_0^b, = 0) - integral_0^b bis(overline(u), y) v dif y \
    arrow.b \
    "(1)" = - integral_0^b integral_0^a bis(overline(u), x) v dif x dif y - integral_0^a integral_0^b bis(overline(u), y) v dif y dif x = integral_0^a integral_0^b (-bis(overline(u), x) - bis(overline(u), y)) v dif x dif y = \
    = ans(innerp(cal(A) u, v))
  $

  To show positive semidefinite, use the form described on $"(***)"$ and $u = v$: 
  $
    "(***)" = integral_0^a integral_0^b (prim(overline(u), x)prim(u, x) + prim(overline(u), y)prim(u, y)) dif x dif y = integral_0^a integral_0^b (abs(prim(u, x))^2 + abs(prim(u, y))^2) dif x dif y >= 0
  $

  To find the eigenvalues associated with the operator, use separation of variables 
  $
  u(x, y) = X(x)Y(y) \
  cal(A)u = lambda u arrow -X''Y - X Y'' = lambda X Y arrow -X''/X - Y''/Y = lambda\
  arrow.b \
  cases(X''/X = -gamma_x^2", " &X(0) = X(a) = 0, Y''/Y = -gamma_y^2"," &Y'(0)=Y'(b) = 0)\
  $
  Starting with $X(x)$:
  $
  X'' = -gamma_x^2 X arrow X(x) = e^(i gamma_x x) = A cos(gamma_x x) + B sin(gamma_x x)\
  X(0) = A = 0 arrow A = 0 \
  X(a) = B sin(gamma_x a) = 0 arrow gamma_x = (pi k_x)/a"," k_x = 1, 2, 3 dots \
  arrow.b\
  X(x) = B sin((pi k_x x)/a) space space space space square
  $

  Now $Y(y)$:
  $
    Y'' = -gamma_y^2Y arrow Y(y) = e^(i gamma_y y) = A cos(gamma_y y) + B sin(gamma_y y)\
    Y'(x) = -gamma_y A sin(gamma_y y) + gamma_y B cos(gamma_y y) \
    Y'(0) = gamma_y B  = 0 arrow B = 0\
    Y'(b) = -gamma_y A sin(gamma_y b) = 0 arrow gamma_y = (pi k_y )/b"," k_y=0,1,2dots\
    arrow.b\
    Y(y) = A cos((pi k_y y)/b) space space space space square
  $



]