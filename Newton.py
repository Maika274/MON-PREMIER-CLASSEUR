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

    def Norme(X):       # Création d'une fonction Norme afin de calculer l'erreur
    N=sqrt(X'*X);
    return   N[1];


def Preci():
  i=float(input("Saisir un nombre initial i : \n")
  i=parse(Float64,redline())
  E=Norme(i-x0);
  n=1;
  while (E>10^(-12)):
    P=Newton(f,derivee_f,x0,n)
    E=Norme(P[:,n+1]-x0);
  n=n+1;
print("Pour $i, il faut $(n-1) itérations pour obtenir une erreur inférieure à 10^(-12).\n");

  #Question 3. b)

  def Temps_C_P():
     T=0;
    for n=1:n :
        T=T+@elapsed(Preci());
    print("Il faut $T secondes afin d'obtenir une telle précision. \n")
  
#Question 4

  def g(x):     #création de la nouvelle fonction
    x=x.^2 .-2
    return g(x)

plt.plot(E,n)
plt.title("Evolution de l'erreur en fonction du nombre d'iteration")
plt.show()
