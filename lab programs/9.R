install.packages("rpart.plot")
library("rpart")
library("rpart.plot")

data <- read.csv("C:/Users/Sangu/Desktop/1(b).csv")
newdata <- data.frame(data)


fit=rpart(play ~ outlook + Temperature  +Humidity +Wind,method="class",data=newdata,control=rpart.control(minsplit=1),parms=list(split='information'))
str(fit)
rpart.plot(fit,type=4,extra=1)
