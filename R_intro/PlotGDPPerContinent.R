#read data into R
myDataFull<-read.table("gapminder.txt", header = TRUE)
means_all<-aggregate(myDataFull$gdpPercap, by=myDataFull[2], FUN="mean")
barplot(means_all[,2], names=means_all[,1], col="red")