path="C:/Users/Sangu/Desktop/DATA_SET"
setwd(path)
bankdata=read.delim("1(b).csv")
bankdata
val_new=vector(mode="numeric",length =length(bankdata$Wind))
bankdata$num<- seq.int(nrow(bankdata))
write.table(bankdata,file="file.csv", sep= "\t", row.names=FALSE)
