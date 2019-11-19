library(cluster)
library(ggplot2)

data <- read.csv("C:/Users/Sangu/Desktop/iris.csv")
mydata <- data[,1:2]


#Elbow Curve
km=kmeans(mydata,4,nstart=10)
km$cluster
km$centers
km$withinss
km$betweenss
km$totss

#Visualizing clusters
plot(mydata[km$cluster ==1,],col="red",xlim=c(min(mydata[,1]),max(mydata[,1])),ylim=c(min(mydata[,2]),max(mydata[,2])))
points(mydata[km$cluster == 2,],col="blue")
points(mydata[km$cluster == 3,],col="green")
points(mydata[km$cluster == 4,],col="black")
