#average gdp for albania
filename<-"../Data/gapminder.txt"

gapminder<-read.table(filename, header=TRUE)

albaniaData<-gapminder[gapminder$country=="Albania", ]

albaniaGDP<-albaniaData$gdpPercap

albaniaAverageGdp<-mean(albaniaGDP)
print(paste("average Gdp is", albaniaAverageGdp))

