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
   
    
    phi_1 = x - projection(phi_0, x) = x - projectionfull(phi_0, x)  = x -2 integral_0^1 x^2 dif x = x - 2/3\
  $

  Now $v in cal(M) = {1, x - 2/3}$
  
  Are looking for 
  $
    integral_0^1 (x^4 - a phi_0 - b phi_1)^2 x dif x
  $

  From which we can calculate 
  $

    a = innerp(phi_0, x^4)/innerp(phi_0, phi_0) = (integral_0^1  x^5 dif x)/(integral_0^1 x dif x) = 1/3
  $
  and 
  $
    b = innerp(phi_1, x^4)/innerp(phi_1, phi_1) = (integral_0^1 (x^6 - 2/3 x^5) dif x)/(integral_0^1 (x^3 - 4/3 x^2 + 4/9 x)) = 8/7\

  $
  The first degree polynomial that best approximates the function $u(x) = x^4$ in $I = [0, 1]$ is
  $
    ans(1/3 phi_0 + 8/7 phi_1 = 8/7x - 3/7)
  $

  #figure(image("./H20a.png"))

  (b) 
  We are now looking for a second degree polynomial which means our $phi in cal(M) = {1, x, x^2}$
  $phi_0 "and" phi_1$ were already calculated in (a) so
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
    ans(phi_2 = 600 x^2 - 720x +180)
  $
  We can now find the best approximation with
   $
    integral_0^1 (x^4 - a phi_0 - b phi_1 - c phi_2)^2 x dif x
  $

  $
    c phi_2 = projectionfull(phi_2, x^4) \
    c = innerp(phi_2, x^4)/innerp(phi_2, phi_2)\
    innerp(phi_2, x^4) = integral_0^1 (600x^2 - 720x + 180)x^4 x dif x = 15/7 \
    innerp(phi_2, phi_2) = integral_0^1 (600x^2 - 720x+180)^2 x dif x = 600 \
    arrow.b \
    c = 15/4200 = 1/280
  $

  The best second degree polynomial to approximate $u(x) = x^4 $ is then
  $
  ans(a phi_0 + b phi_1 + c phi_2 = 15/7 x^2 - 10/7 x + 3/14)
  $

  #figure(image("H20b.png"))
]
