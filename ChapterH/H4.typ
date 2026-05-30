#import "../template.typ": *

= H.4
Let 
$
  f(x) = 1 + i x cm g(x) = 2 + i x^2 cm  0 <= x <= 1 .
$
Calculate $innerp(f,g)$ and $innerp(g,f)$, where the scalar product is taken in $L_2 [0,1]$.
#solution[
The scalar product is defined as 
$
  innerp(u,v) = integral_L overline(u)  v dif x
$
This gives
$
  innerp(f,g) = integral_0^1 (overline(1+i x)) (2+i x^2) dif x = integral_0^1 (2 + i x^2 - 2 i x + x^3)dif x =\
  = [2x + (i x^3)/3 - i x^2 + x^4/4]_0^1 = 9/4 - 2/3 i
$

and 
$
    innerp(g,f) = integral_0^1 (overline(2+i x^2)) (1 + i x) dif x = integral_0^1 (2 + 2 i x - i x^2 + x^3)dif x =\
  = [2x +  i x^2 - (i x^3)/3 + x^4/4]_0^1 = 9/4 + 2/3 i 
$
As expected, 
$
  innerp(f, g) = overline(innerp(g,f)) .
$
]
