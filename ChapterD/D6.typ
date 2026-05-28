#import "../template.typ": *

=
Calculate $f' "and" f''$ in distributions for

(a) $f(x) = e^(-x) theta(x)$

(b) $f(x) = e^(-abs(x))$

#solution[
  (a) Using $theta'(x) = delta(x)$
  $
    f'(x) = (e^(-x)theta(x))' = -e^(-x)theta(x) + e^(-x)delta(x) = ans(delta(x) - e^(-x)theta(x))\
    \
    f''(x) = (delta(x)-e^(-x)theta(x))' = delta'(x) + e^(-x)theta(x) -e^(-x)delta(x) = ans(delta'(x) - delta(x) + e^(-x)theta(x))
  $

  (b) Expressing $abs(x)$ in distributions:
  $
    abs(x) = cases(&x",   " &&x>0, -&x","&&x<0) = x theta(x)  - x(1-theta(x)) = 2x theta(x) - x\
    \
    f'(x) = (-2theta(x) - 2x delta(x) + 1)e^(-abs(x)) = ans((1- 2 theta(x))e^(-abs(x)))\
    \
    f''(x) = (e^(-abs(x)) - 2e^(-abs(x))theta(x))' = (1-2theta(x))e^(-abs(x)) +2(1-2theta(x))e^(-abs(x))theta(x) -2e^(-abs(x))delta(x) = \
    = e^(-abs(x))[(1-2theta(x)) + 2theta(x)(1-2theta(x))] - 2delta(x)=e^(-abs(x))(1-2theta(x))^2 - 2delta(x) = \
    = [(1-2theta(x))^2 = 1 "for all" x != 0] = ans(e^(-abs(x))-2delta(x)
    )
  $
]