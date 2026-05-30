#import "../template.typ": *

= H.11
Verify that the vectors
$
  &u_1 = (1,1,1,1)"        " &&u_2=(1,i,-1,-i)\
  &u_3 = (1,-1,1,-1) &&u_4=(1,-i,-1,i)\
$
are pairwise orthogonal in $CC^4$. Determine the corresponding orthonormal base $e_1, e_2, e_3, e_4$ and write 
$
  u = (2+i, 1+2i, i, 1-4i)
$
in this base.
#solution[
  The scalar product in $CC^4$ is 
  $
    innerp(u, v) = overline(u) dot v
  $
  To check that the vectors are pairwise orthogonal, we check if their scalar product is 0:
$
  innerp(u_1, u_2) = 1 + i - 1 - i = 0\
  innerp(u_1, u_3) = 1 - 1 + 1 - 1 = 0\
  innerp(u_1, u_4) = 1 - i - 1 + i = 0\
  \
  \
  innerp(u_2, u_3) = 1 + i - 1 - i = 0\
  innerp(u_2, u_4) = 1 - 1 + 1 - 1 = 0\
  \
  \
  innerp(u_3, u_4) = 1 + i - 1 - i = 0
$
This confirms they are pairwise orthogonal. All vectors have the length $2$, so the orthonormal base is 
$
  &e_1 = u_1/2 "   " &&e_2 = u_2 / 2\
  &e_3 = u_3 / 2 &&e_4 = u_4 / 2
$
To find the coordinates of $u$ in terms of $e_1, e_2, e_3 "and" e_4$, we use the projection formula. Since
$
  u = sum_(k=1)^4 c_k e_k\
  arrow.b\
  c_k = innerp(e_k, u)/innerp(e_k, e_k) = innerp(e_k, u)\
  \
  \
  c_1 = innerp(e_1, u) = 1/2 overline((1,1,1,1)) dot (2+i, 1+2i, i, 1-4i) = 2\
  \
  c_2 = innerp(e_2, u) = 1/2 overline((1,i,-1,-i)) dot (2+i, 1+2i, i, 1-4i) = 4\
  \
  c_3 = innerp(e_3, u) = 1/2 overline((1,-1,1,-1)) dot (2+i, 1+2i, i, 1-4i) = 2i \
  \
  c_4 = innerp(e_4, u) = 1/2 overline((1,-i,-1,i)) dot (2+i, 1+2i, i, 1-4i) = -2\
  \
  arrow.b\
  u = 2e_1 + 4e_2 + 2i e_3 - 2e_4
  

$
]
