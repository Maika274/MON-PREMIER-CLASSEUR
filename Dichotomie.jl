function f(x)
  print("Saisir a \n")
  a=parse(Float64,redline())
  print("Saisir b \n")
  b=parse(Float64,redline())
  x=x.^2 .+ 2*x -3
  return f(x)
end


function Dichotomie(f(x),x0,n)
  x0= (a.+b)./2
  n=1
  while f(x0)!=0
    if f(x0)<0
      a=x0
      b=b
    else
      a=a
      b=x0
    end
    x0=(a.+b)./2
    n=n+1
  end
return x0
print("Il a fallut $n itérations pour obtenir $x0 \n")
end
