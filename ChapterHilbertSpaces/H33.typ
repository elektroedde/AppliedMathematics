#import "../template.typ": *

= H.33
$
  f_n (x) = x^n", " x in I = [0,1]", " n=0,1,dots
$
Determine $norm(f_n)_p$ for $p = 1, 2 "and" infinity$. Is it for any of these norms true that $f_n arrow 0$ when $n arrow infinity$? What is the pointwise limit function?

#solution[


  $
    norm(f_n)_1 = integral_0^1 abs(x^n) dif x = [x^(n+1)/(n+1)]_0^1 = 1/(n + 1) arrow 0", " n arrow infinity
  $

  $
    norm(f_n)_2 = (integral_0^1 abs(x^n)^2 dif x)^(1/2) = ([x^(2n+1)/(2n+1)]_0^1)^(1/2) = 1/sqrt(2n+1) arrow 0", " n arrow infinity
  $

  $
    norm(f_n)_infinity = sup_(x in [0,1]) abs(f_n) = sup_(x in [0,1]) abs(x^n) = 1 arrow 1", " n arrow infinity
  $
]