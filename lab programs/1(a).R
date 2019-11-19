path="C:/Users/Sangu/Desktop/DATA_SET"
setwd(path)
datav=read.csv("iris.csv")
plot(datav$sepal.length,datav$sepal.width)
#length and width are taken as paarmeters here to plot
