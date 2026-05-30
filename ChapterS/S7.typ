#import "../template.typ": *

= S.7
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
    1/(2 pi) integral_(-pi)^pi |e^(i r sin theta)|^2 dif theta = sum_(-infinity)^infinity |J_n (r)|^2 
  $
  $
    1/(2 pi) integral_(-pi)^pi overline(e^(i r sin theta)) e^(i r sin theta) dif theta = 1/(2 pi) integr(-pi,pi,,theta) = 1/(2 pi) 2 pi = 1\

    arrow.b\
   ans(sum_(-infinity)^infinity abs(J_n (r)) ^2 = 1)
  $
]