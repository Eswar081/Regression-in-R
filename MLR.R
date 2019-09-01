
reg.model<-lm(Sales~Age+HS+Income+Black+Female+Price,data=`CigaretteConsumption(1)`)
summary(reg.model)
plot(`CigaretteConsumption(1)`)
data<-`ToyotaCorolla(2)`
`ToyotaCorolla(2)`(Price,Age_08_04,HP,Gears,cc,Doors,Quarterly_Tax,Weight)

data<-`ToyotaCorolla(2)`[,c(3,4,9,16,13,14,17,18)]

pairs(data)
cor(data)
model.car<-lm(Price~Age_08_04+HP+Gears+cc+Doors+Quarterly_Tax+Weight, data=data)
summary((model.car))
plot(model.car)
residualPlots(model.car,tests=F)
avPlots(model.car)
qqPlot(model.car)
influenceIndexPlot(model.car)
