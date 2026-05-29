#import "../template.typ": *

= H.18
$
  integral_0^pi (x - a sin(x) - b sin(2x))^2 dif x
$
is minimized.

#solution[
    $
    v in cal(M) = [sin(x), sin(2x)]
  $
  $sin(x)$ and $sin(2x)$ are orthogonal and we can use the projection formula which says that the minimum is obtained when

  $
    v = projection(cal(M), u)
  $

$
  v_1 = a sin(x) = projection(sin(x),u) = projectionfull(sin(x), x) \
  v_2 = b sin(2x)
$

From this, $a$ is calculated as 
$
  a = innerp(sin(x), x)/innerp(sin(x), sin(x)) \
  innerp(sin(x), x) = integral_0^pi x sin(x) dif x = -[x cos(x)]_0^pi + integral_0pi cos(x) dif x = pi \
  innerp(sin(x), sin(x)) = integral_0^pi sin^2 x dif x = integral_0^pi (1 - cos(2x))/2 dif x = pi/2\
  arrow.b \
  ans(a = pi/(pi/2) = 2)
$

and $b$ is calculated in the same way as
$
  b = innerp(sin(2x), x)/innerp(sin(2x), sin(2x))\
  innerp(sin(2x), x) = integral_0^pi x sin(2x) dif x = -[ (x cos(2x))/2]_0^pi + integral_0^pi (cos(2x))/2 dif x =-pi/2 \
  innerp(sin(2x), sin(2x)) = integral_0^pi sin^2(2x) dif x = integral_0^pi (1 - cos(2x))/2 dif x = pi/2\
  arrow.b \
  ans(b = -(pi/2)/(pi/2) = -1)
$
 

  In general, the functions $v in cal(M) = {sin(n x)}_(n=1)^infinity$ that best approximate $u(x) = x$ at the interval $[0, pi]$ is given by
  $
    u_n = (2(-1)^(n-1)sin n x)/n 
  $

  #figure(image("H18.png"))

]