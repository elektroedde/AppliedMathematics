#import "../template.typ": *

=
The operator $cal(A)$ is defined as
$
  cal(A) = -sqrt(1-x^2)dv(, x)(sqrt(1-x^2)dv(,x)) \
  D_cal(A) = {u in cal(C)^2(-1, 1) | u "and" u' "bounded/limited"}
$
(a) Determine a scalar product in which $cal(A)$ is symmetric.

(b) Show that $cal(A)$ is symmetric in the scalar product from (a), using the definition.

(c) Show that $1, x, 2x^2-1$ are eigenfunctions to $cal(A)$ and determine the corresponding eigenvalues.

(d) Evaluate 
$
  integral_(-1)^1 (2x^2-1)/sqrt(1-x^2) dif x
$

#solution[

  (a) The operator is a Sturm-Liouville operator
  $
    cal(A)u = -sqrt(1-x^2) dv(,x)(sqrt(1-x^2) dv(,x)) = -1/w (p u')', "   " w(x) = 1/sqrt(1-x^2) 
  $
  and the scalar product is then
  $
    innerp(u, v) = integral_(-1)^1 overline(u(x))v(x)1/(w(x)) dif x
  $

  (b) Using the scalar product definition 
  $
    innerp(u, v) = integral overline(u(x)) v(x) w(x) dif x, "   " w(x) = 1/sqrt(1-x^2)
  $
  we get
  $
    innerp(u, cal(A)v) =\
    = integral_(-1)^1 overline(u(x))[cal(A) v(x)] 1/(w(x)) dif x = integral_(-1)^1 overline(u(x))[-sqrt(1-x^2)dv(, x)(sqrt(1-x^2)dv(,x) v(x))] 1/sqrt(1-x^2) dif x =\
    = - integral_(-1)^1 overline(u(x)) (sqrt(1-x^2)v'(x))' dif x = -underbrace([overline(u(x))sqrt(1-x^2) v'(x)]_(-1)^1, =0) + integral_(-1)^1 overline(u'(x))sqrt(1-x^2)v'(x) dif x = \
    = integral_(-1)^1 (overline(u'(x))sqrt(1-x^2))v'(x) dif x = underbrace([(overline(u'(x))sqrt(1-x^2))v(x)]_(-1)^1, = 0) - integral_(-1)^1 (overline(u'(x))sqrt(1-x^2))' v(x) dif x = \
    = integral_(-1)^1 -(overline(u'(x))sqrt(1-x^2))'v(x) dif x = integral_(-1)^1 -sqrt(1-x^2)(overline(u'(x))sqrt(1-x^2))'v(x) 1/sqrt(1-x^2) dif x = \
    = integral_(-1)^1 [-sqrt(1-x^2) dv(,x)(sqrt(1-x^2)dv(,x)overline(u(x)))] v(x) 1 / sqrt(1-x^2) dif x = \
    = integral_(-1)^1 [cal(A) overline(u(x))]v(x) 1/(w(x)) dif x = ans(innerp(cal(A)u, v))\
  $

  (c)
  $
    cal(A) u = lambda u\
    u(x) = 1\
    arrow.b\
    cal(A) dot 1 = lambda_0 dot 1 arrow -sqrt(1-x^2)dv(,x)(sqrt(1-x^2)dv(,x) dot 1) = lambda_0 dot 1 arrow 0 = lambda_0 dot 1 arrow ans(lambda_0 = 0) \
    \
    \
    u(x) = x\
    arrow.b\
    cal(A) x = lambda_1 x arrow -sqrt(1-x^2)dv(,x)(sqrt(1-x^2)dv(,x) x) = lambda_1 x arrow -sqrt(1-x^2)(-2x)/(2sqrt(1-x^2)) = lambda_1 x arrow\
    arrow x = lambda_1 x arrow ans(lambda_1 = 1)\
    \
    \
    u(x) = 2x^2 - 1\
    arrow.b\
    cal(A)(2x^2-1) = lambda_2(2x^2-1) arrow -sqrt(1-x^2)dv(,x)(sqrt(1-x^2)dv(,x) (2x^2-1)) = lambda_2(2x^2-1) arrow \
    arrow -sqrt(1-x^2)dv(,x)(4x sqrt(1-x^2)) = -sqrt(1-x^2)(4sqrt(1-x^2) - (8x^2)/(2sqrt(1-x^2))) = -4+4x^2+4x^2 = \
    = 8x^2 - 4 = lambda_2 (2x^2-1) arrow 4(2x^2 - 1) = lambda_2 (2x^2 - 1) arrow ans(lambda_2 = 4)
  $

  (d)
  The integral can be rewritten with the scalar product in (a) as
  $
    integral_(-1)^1 (2x^2-1)/sqrt(1-x^2) dif x = innerp(1, 2x^2-1), "   " w(x) = q/sqrt(1-x^2)
  $
  Since the functions $1 "and" 2x^2-1$ are eigenfunctions, the scalar product between them are pairwise orthogonal and therefore $= 0$. 

]