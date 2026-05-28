#import "../template.typ": *

=
Let $p_k"," k=0,1,2 dots$ be orthogonal polynomials of degree $p_k = k$.

(a) Show that $p_n$ is orthogonal to all polynomials of degree $p < n$

(b) Show that if $p$ is a polynomial, not identically zero, such that $innerp(p_k, p) = 0$ for $k = 0, 1, 2$, then degree of $p >= 3$.

#solution[
    (a)
    All polynomials of degree $m$ can be written
    $
      p = sum_(k=0)^m c_k p_k
    $
    Gives
    $
      innerp(p_n, p) = innerp(p_n, sum_(k=0)^m c_k p_k) = sum_(k=0)^m c_k innerp(p_n, p_k) = 0 "for" m < n
    $
    since all polynomials are pairwise orthogonal

    (b) 
    $
      p = sum_(k=0)^m c_k p_k
    $
    where 
    $
      c_k = innerp(p_k, p)/innerp(p_k, p_k) \
      innerp(p_k, p) = 0", for" k = 0, 1, 2 arrow c_0 = c_1 = c_2 = 0
    $
    The restriction that $p != 0$ gives that $deg p >= 3$
]