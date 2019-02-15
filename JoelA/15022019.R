#Simular va ji-cuadrada gl=1

n=500
x=(rnorm(n))^2
Pedro<-"burlywood3"
hist(x,probability = T,col=Pedro,main = "simular ji-cuadrada")


#Simular ji-cuadrada gl=5
n=5000
m=4200
Ji=rep(0,m)
for(k in 1:m)
{
  x=(rnorm(n))^2
  Ji[k]=sum(x)
}
Ji
x=Ji
hist(Ji,col=Pedro,probability = TRUE)
curve(dchisq(x,n),add=T)

#Simular t-student

n=1000000
gl=5000
z=rnorm(n)
ji=rchisq(n,gl)

t=z/(sqrt(ji/gl))
t
x=t
hist(t, col=Pedro,probability=TRUE)
curve(dt(x,gl),add=T)

#Compara Normal y T-student

x=seq(-4,4,by=0.5)
gl=5

curve(dnorm(x,0,1),xlim=c(-4,4),col=Pedro,lwd=2)
curve(dt(x,gl),xlim=c(-4,4),col="red",lwd=2,add=T)