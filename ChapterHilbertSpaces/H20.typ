#import "../template.typ": *

= H.20

#solution[
  For this setup, the scalar product is defined as 
  $
    innerp(u, v) = integral_0^1 u(x) v(x) w(x) dif x = integral_0^1 u(x) v(x) x dif x
  $
  Find an orthogonal base 
  $
    phi_0 = 1 \
   
    innerp(phi_0, phi_0) = integral_0^1 x dif x = 1/2\
     ans(psi_0 = phi_0/innerp(phi_0, phi_0) = 2) \
    phi_1 = x - projection(phi_0, x) = x - projectionfull(phi_0, x)  = x -2 integral_0^1 x^2 dif x = x - 2/3\
    innerp(phi_1, phi_1) = integral_0^1 (x-2/3)^2 x dif x = 1/36\
      \
    ans(psi_1 = phi_1/innerp(phi_1, phi_1) =36x - 24)
  $

  Now $v in cal(M) = {2, 36x - 24}$
  
  Are looking for 
  $
    integral_0^1 (x^4 - a psi_0 - b psi_1)^2 x dif x
  $

  From which we can calculate 
  $
    a psi_0 = projectionfull(psi_0, x^4) \
    a = innerp(psi_0, u)/innerp(psi_0, psi_0)\
    innerp(psi_0, u) = integral_0^1 2 x^5 dif x = 1/3 \
    innerp(psi_0, psi_0) = integral_0^1 4x dif x = 2 \
    ans(a = 1/6)
  $
  and 
  $
    b psi_1 = projectionfull(psi_1, x^4) \
    b = innerp(psi_1, x^4)/innerp(psi_1, psi_1) \
    innerp(psi_1, x^4) = integral_0^1 (36x^6 - 24x^5) dif x = 36/7 - 24/6 = 8/7 \
    innerp(psi_1, psi_1) = integral_0^1 (1296x^3 - 1728 x^2 + 576x) = 36\
    ans(b = 2/(63))
  $
  The first degree polynomial that best approximates the function $u(x) = x^4$ in $I = [0, 1]$ is
  $
    ans(1/6 psi_0 + 2/63 psi_1 = 8/7x - 3/7)
  $

  #figure(image("./H20a.png"))

  (b) 
  We are now looking for a second degree polynomial which means our $psi in cal(M) = {1, x, x^2}$
  $psi_0 "and" psi_1$ were already calculated in (a) so
  $
    phi_2 = u_2 - projection(phi_0","phi_1, u_2) = x^2 - projectionfull(phi_0, x^2) - projectionfull(phi_1, x^2) \
    projectionfull(phi_0, x^2) = 2 innerp(phi_0, x^2) = 2integral_0^1 x^3 dif x = 1/2 \
    projectionfull(phi_1, x^2) = innerp(phi_1, x^2)(36x - 24)
  $
  Now calculating
  $
    innerp(phi_1, x^2) = integral_0^1 (x^4-(2x^3)/3) dif x = 1/30
  $
  which gives finally
  $
    phi_2  = x^2 -6/5 x+ 3/10  \
    innerp(phi_2, phi_2) = integral_0^1 (x^2 - (6x)/5 + 3/10)^2x dif x = 1/600 \
    ans(psi_2 = 600 x^2 - 720x +180)
  $
  We can now find the best approximation with
   $
    integral_0^1 (x^4 - a psi_0 - b psi_1 - c psi_2)^2 x dif x
  $

  $
    c psi_2 = projectionfull(psi_2, x^4) \
    c = innerp(psi_2, x^4)/innerp(psi_2, psi_2)\
    innerp(psi_2, x^4) = integral_0^1 (600x^2 - 720x + 180)x^4 x dif x = 15/7 \
    innerp(psi_2, psi_2) = integral_0^1 (600x^2 - 720x+180)^2 x dif x = 600 \
    arrow.b \
    c = 15/4200 = 1/280
  $

  The best second degree polynomial to approximate $u(x) = x^4 $ is then
  $
  ans(a psi_0 + b psi_1 + c psi_2 = 15/7 x^2 - 10/7 x + 3/14)
  $

  #figure(image("H20b.png"))
]
