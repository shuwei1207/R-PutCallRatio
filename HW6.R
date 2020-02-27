data <- read.csv("PutCallRatio.csv")

model1=lm(putcallnot~putcalldeal,data=data) 
coef(model1) 
plot(data$putcalldeal,data$putcallnot) 
abline(model1)
summary(model1)
residuals(model1) 

model1=lm(putcallnot~log(putcalldeal),data=data) 
coef(model2) 
summary(model2)
residuals(model2)



library(np)
model3.np = npreg(putcallnot~putcalldeal, ckertype='gaussian', ckerorder=2,data=data)
plot(data$putcalldeal[order(data$putcalldeal)],data$putcallnot , col='blue', type ='l', lty=1, xlab="putcalldeal", ylab = "putcallnot")

