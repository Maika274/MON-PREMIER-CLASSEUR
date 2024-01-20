def f(x)
  x=x.^2 .+ 2*x -3
  return f(x)
end


function Dichotomie(f(x),x0,n)
  a=float(input("Saisir a"))
  b=float(input("Saisir b"))
  x0= (a.+b)./2
  while f(x0)!=0
    if f(x0)<0
      a=x0
      b=b
    else
      a=a
      b=x0
    x0=(a.+b)./2
return x0
