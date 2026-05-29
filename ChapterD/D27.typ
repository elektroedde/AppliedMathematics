#import "../template.typ": *

= D.27
Solve the three-dimensional potential problem, with $r = sqrt(x^2 + y^2 + z^2)$
$
  &laplacian u = delta(r-2)", " &&1 < r < 3 \
  &u = 1", " &&r = 1\
  &u = 3", " &&r = 3
$
#solution[
Symmetric in $r$ so the Laplacian becomes
$
  1/r^2 dvp(,r)(r^2 dvp(u,r)) = delta(r-2)\
  (r^2 dvp(u,r))' = r^2 delta(r-2) = 4 delta(r-2) \
  arrow.b\
  r^2 dvp(u,r) = 4 theta(r-2)+ A\
  dvp(u,r) = 4/r^2 theta(r-2) + A/r^2\
  u(r) = (2-4/r)theta(r-2) - A/(r) + B\
  u(1) = 1 = -theta(-1)-A+B = 0 arrow -A + B = 1\
  u(3) = 3 = (2/3)theta(1) - A/3 + B = 2/3 +2/3 A = 3\
  arrow.b\
  cases(-A+B = 1, 2/3 - A/3 + B = 3) arrow 2/3 + 2/3 A = 2 arrow A =2, B=3\
  arrow.b\

  ans(u(r) = (2-4/r)theta(r-2) -2/(r) +3)


$
]