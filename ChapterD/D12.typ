#import "../template.typ": *

= D.12
$
  u'(x) + (2x+1)u(x) = delta'(x)
$
#solution[
  Integrating factor for LHS is
  $
    e^(x^2+x)
  $
  Multiply this into the equation and integrate LHS, then using the expansion for $f(x)delta'(x)$:

  $
    (u(x)e^(x^2 + x))' = e^(x^2 + x) delta'(x) = e^0 delta'(x) - (2x + 1)_(x=0) delta(x) = \
    = (u(x)e^(x^2 + x))' = delta'(x) - delta(x)
  $

  Now integrating both sides gives:
  $
    u(x)e^(x^2 + x) = delta(x) - theta(x) + C \
    arrow.b\
    ans(u(x) = e^(-(x^2 + x))(delta(x) - theta(x) + C) = delta(x) +e^(-x^2 - x)(C - theta(x)))
  $
]