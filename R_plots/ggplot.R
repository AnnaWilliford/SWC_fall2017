filename<-"../Data/gapminder.txt"

gapminder<-read.table(filename, header=TRUE)
ggplot(data = gapminder, aes(x = year, y = lifeExp, color = country)) +
    geom_point(show.legend = FALSE)
