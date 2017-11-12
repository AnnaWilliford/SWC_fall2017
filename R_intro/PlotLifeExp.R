##This is  PlotLifeExp.R script

#read data into R
myDataFull<-read.table("gapminder.txt", header = TRUE)

#select information about Canada
Canada<-myDataFull[myDataFull$country=="Canada",]

#plot lifeExp 
png("Canada.png")  #open png device to write your plot to 

plot(Canada$year, Canada$lifeExp, col="blue", type="l")

dev.off()  #close device