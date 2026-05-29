#import "../template.typ": *

= S.1

#solution[
  Using the definition of $Gamma(z)$:
  $
    Gamma(z) = integral_0^infinity t^(z-1)e^(-t) dif t
  $
  it can be shown that $Gamma(z+1) = z Gamma(z)$:
  $
    Gamma(z+1) = integral_0^infinity t^z e^(-t) dif t = underbrace([-t^z e^(-t)]_0^infinity, =0) + integral_0^infinity z t^(z-1) e^(-t) dif t = \
    = z integral_0^infinity t^(z-1) e^(-t) dif t = z Gamma(z)
  $
  We also have 
  $
    Gamma(1) = integral_0^infinity e^(-t)dif t = [-e^(-t)]_0^infinity = 1
  $

  This gives 
  $
    Gamma(3) = Gamma(2 + 1) = 2 Gamma(2) = 2 Gamma(1+1) = 2 dot 1 dot Gamma(1) arrow ans(Gamma(3) = 2)
  $

  Next 
  $
    Gamma(1/2) = integral_0^infinity t^(-1/2)e^(-t) dif t arrow [t = x^2 arrow dif t = 2x dif x] = 2 integral_0^infinity x x^(-1) e^(-x^2) dif x = \
    = 2 integral_0^infinity e^(-x^2) dif x = 2 sqrt(pi)/2 arrow ans(Gamma(1/2) = sqrt(pi))
  $

  Finally we will use the definition for $Gamma(z),"Re" z <= 0$:
  $
    Gamma(z) = Gamma(z+n)/((z+n-1)dots(z+1)z), "  "n "chosen such that" "Re"(z+n)>0
  $
  This gives
  $
    Gamma(-1/2) = Gamma(-1/2+1)/(-1/2) = Gamma(1/2)/(-1/2) arrow ans(Gamma(-1/2) = -2sqrt(pi))
  $

]