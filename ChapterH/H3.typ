#import "../template.typ": *

= H.3
Let $u = (2, 1+i,i,1-i)$ and $v=(1,i,-1,i)$. Calculate
$
  norm(u), norm(v), innerp(u,v), innerp(v,u)
$
with respect to the ordinary scalar product in $CC^4$.
#solution[
$
norm(u) = sqrt(innerp(u,u)) = sqrt(overline((2,1+i,i,1-i)) dot (2,1+i,i,1-i)) = sqrt(4 + 2 + 1 + 2) = 3\
\
norm(v) = sqrt(innerp(v,v)) = sqrt(overline((1,i,-1,i)) dot (1,i,-1,i)) = sqrt(1+1+1+1) = 2\
\
innerp(u,v) = overline((2,1+i,i,1-i)) dot (1,i,-1,i) = 2 + i + 1 + i + i - 1 =2 + 3i \
\
innerp(v,u) = overline((1,i,-1,i)) dot (2,1+i,i,1-i) = 2 - i + 1-i-i-1 = 2 - 3i
$
]
