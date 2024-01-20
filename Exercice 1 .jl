#Question 2

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
    n=n+1    # Compteur du nombre d'itération
  end
return x0
print("Il a fallut $n itérations pour obtenir $x0 \n")
end

#Question 3

function f(x)  #Fonstion utilisée pour la question 3
  print("Saisir a \n")
  a=parse(Float64,redline())
  print("Saisir b \n")
  b=parse(Float64,redline())
  x=x.^2 .+ 2*x -3
  return f(x)
end

#Question 3. a)

function Norme(X) # Création d'une fonction Norme afin de calculer l'erreur
    N=sqrt(X'*X);
    return   N[1];
end

function Preci()  
  print("Saisir un nombre initial i : \n")
  i=parse(Float64,redline())
  E=Norme(i-x0);
  n=1;
  while (E>10^(-12))
  Y=Jacobi(A,B,X0,N);
  E=Norme(Y[:,N+1]-XT);
  N=N+1;
end
print("Pour X0=(0,0,0), il faut $(N-1) itérations pour obtenir une erreur inférieure à 10^(-12).\n");
