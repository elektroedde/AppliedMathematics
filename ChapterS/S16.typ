#import "../template.typ": *

= S.16
The spherical Bessel functions are defined as 
$
  j_l (x) = sqrt(pi/(2 x))J_(l + 1/2) (x)
$
Calculate $j_0, j_1, "and" j_2$ by using 
$
  J_(1/2) (x) = sqrt(2/(pi x)) sin (x)\
  dv(,x) ( (J_nu (x))/x^nu) = - (J_(nu+1)(x))/x^nu",  " nu = 0,1,2dots
$
#solution[
$
  ans(j_0 (x) = sqrt(pi/(2 x)) J_(1/2)(x) = sin(x))\
  \
  ans(j_1 (x) = sqrt(pi/(2x))J_(3/2)(x) = (sin(x) - x cos(x))/x^2)\
  \
  j_2(x) = sqrt(pi/(2 x)) J_(5/2)(x) = sqrt(pi/(2 x)) (-x^(3/2)) dv(,x)((J_(3/2) (x))/x^(3/2)) \
  \
  (J_(3/2)(x))/x^(3/2) = 1/x^(3/2)sqrt((2x)/pi) ((sin(x)-x cos(x))/x^2) = sqrt(2/pi) ((sin(x) - x cos(x))/x^3)\
  \

  dv(,x)((J_(3/2)(x))/x^(3/2)) = sqrt(2/pi) ( (x^4 sin(x)-3x^2 sin(x) + 3x^3 cos(x))/x^6  )  \
  \
  ans(j_2 (x)=  ( ((3-x^2) sin(x) - 3x cos(x))/x^3 ))
$
]
