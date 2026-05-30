#import "../template.typ": *

= H.12
Let 
$
  f_n (x) = x^n .
$
Is ${f_n}_0^infinity$ pairwise orthogonal in

(a) $L_2(0,1)$

(b) $L_2(-1,1)$
#solution[
(a) No, since the scalar product in $L_2(0,1)$ is not zero:
$
  innerp(x^j, x^k) = integral_0^1 x^(j+k) dif x = [x^(j+k+1)/(j+k)]_0^1 = 1/(j+k) != 0
$

(b) No,
$
  innerp(x^j, x^k) = integral_(-1)^1 x^(j+k) dif x = [x^(j+k+1)/(j+k)]_(-1)^1 arrow cases(= 0 cm "if" j+k+1 "even", != 0 cm "if" j+k+1 "odd")
$
]
