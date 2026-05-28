#import "../template.typ": *

=
Show that 
$
  sum_(-infinity)^infinity abs(J_n (r))^2 = 1
$

#solution[
  Using the Fourier expansion 
  $
    e^(i r sin theta) = sum_(-infinity)^infinity J_n (r) e^(i n theta)
  $
  and Parseval's Theorem 
  $
    1/(2 pi) integral_(-pi)^pi overline(e^(i r sin theta)) e^(i r sin theta) dif theta = sum_(-infinity)^infinity overline(J_n (r))J_n (r) overline(e^(i n theta))e^(i n theta) \
    arrow.b\
    1/(2pi) integral_(-pi)^pi dif theta = sum_(-infinity)^infinity abs(J_n (r)) ^2 \
    arrow.b\
    ans(1/(2pi) 2pi = sum_(-infinity)^infinity abs(J_n (r)) ^2 = 1)
  $
]