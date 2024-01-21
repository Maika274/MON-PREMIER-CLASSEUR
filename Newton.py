def Newton(f,derivee_f,x0,n):
    pas = 1
    while pas > n:
        x = x0-f(x0)/derivee_f(x0)
        pas = abs(x - x0)
        x0 = x
    return pas
    return x
  
def f(x):
  x=x.^2 .+ 2*x -3
  return f(x)

    
