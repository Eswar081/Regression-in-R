mydata<-scale(`Universities(1)`[,2:7])
d<-dist(mydata, method="euclidean") #computing the distance matrix
fit<-hclust(d, method='average')
plot(fit)
fit1<-hclust(d, method='centroid')
plot(fit1)
gruop<-cutree(fit,k=4)
rect.hclust(fit, k=4, border = "red")
install.packages("plyr")
library()
x <-  runif(50) # generating 50 random numbers from uniform distribution(0,1)
y <-  runif(50) # generating 50 random numbers 

data <- cbind(x,y) 
plot(data)
km <- kmeans(data,4) #kmeans clustering - 4 clusters; k ~ sqrt(n/2)

####################
install.packages("animation")
library(animation)
windows()
km <- kmeans.ani(data, 4)
###################
#windows()
wss<-c()
for(i in 2:15) wss[i]<-sum(kmeans(data,centers = i)$withinss)
plot(1:15,wss,type = "b", xlab = "No of clusters",ylab = "Avg distance")

A.Rules

Titanic<-Titanic[,-c(1)]
rules <- apriori(Titanic)
arules::inspect(rules)
rules.sorted <- sort(rules, by="lift")
arules::inspect(rules.sorted)

# rules with rhs containing "Survived" only
rules <- apriori(Titanic,parameter = list(minlen=1, supp=0.2, conf=0.5)
                 ,appearance = list(rhs=c("Survived=No", "Survived=Yes")
                                    ,default="lhs"),control = list(verbose=F))
arules::inspect(rules)

library(gdata)

`Universities(1)`<-princomp(`Universities(1)`[,2:7], cor = TRUE,scores = TRUE, covmat = NULL)
summary(`Universities(1)`)
`Universities(1)`$scores
`Universities(1)`$loadings

