data<-NewspaperData[,-1]
mymodel<-lm(sunday~daily,data=data)
summary(mymodel)

myage<-Age

mymodel<-lm(Exp~Age,data=myage)

summary(mymodel)

predict(mymodel,data.frame(Age=200))

predict(mymodel,data.frame(Age=1000))

mymodel<-lm(AT~Waist,data=wc.at)
summary(mymodel)
