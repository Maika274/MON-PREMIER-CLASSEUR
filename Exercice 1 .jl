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
    P=Dichotomie(f(x),x0,n)
    E=Norme(P[:,n+1]-x0);
  n=n+1;
end
print("Pour $i, il faut $(n-1) itérations pour obtenir une erreur inférieure à 10^(-12).\n");

  #Question 3. b)

  function Temps
     T=0;
    for n=1:n
        T=T+@elapsed(Preci());
    end
    print("Il faut $T secondes afin d'obtenir une telle précision. \n")
end

  
#Question 4

  function g(x)     #création de la nouvelle fonction
    x=x.^2 .-2
    return g(x)
  end

  #Représentation graphique de l'évolution de l'erreur
  plot(E,n-1, xaxis=(0:0,0001:3), yaxis=(1:1:n), title="Evolution de l'erreur en fonction du nombre d'itération", titlefont=font(14),lw=3,aspect_ratio=:equal)
  
