fahr_to_kelvin <- function(temp) {
    kelvin <- ((temp - 32) * (5/9)) + 273.15
    kelvin
}

fahr_to_kelvin(32)

kelvin_to_celsius <- function(temp) {
    Celsius <- temp - 273.15
    Celsius
}

print(paste('absolute zero in Celsius:', kelvin_to_celsius(0)))

fence <- function(original, wrapper) {
    result <- paste0(wrapper, original, wrapper)
    
    return(result)
}

# test function call
print(fence('James', '***'))


getAverageGdpPerCapita <- function(country, startYear, endYear) {
    # extract gdpPercap from the gapminder data for the specified country.
    
    selectedCountryData <- gapminder[gapminder$country == country & 
                                         gapminder$year >= startYear & 
                                         gapminder$year <= endYear, 'gdpPercap']
    
    mean(selectedCountryData)
}

gdpUSA <- getAverageGdpPerCapita('United States', 1980, 1989)
gdpCanada <- getAverageGdpPerCapita('Canada')

print(paste('GDP of USA is', gdpUSA))
print(paste('GDP of Canada is', gdpCanada))

getAverageGdpPerCapita <- function(country, startYear = 1952, endYear = 2007) {
    # extract gdpPercap from the gapminder data for the specified country.
    
    selectedCountryData <- gapminder[gapminder$country == country & 
                                         gapminder$year >= startYear & 
                                         gapminder$year <= endYear, 'gdpPercap']
    
    mean(selectedCountryData)
}

gdpUSA <- getAverageGdpPerCapita('United States', 1980, 1989)
gdpCanada <- getAverageGdpPerCapita('Canada')

print(paste('GDP of USA is', gdpUSA))

---
    getAverageGdpPerCapita <- function(country, startYear = 1952, endYear = 2007) {
        # extract gdpPercap from the gapminder data for the specified country.
        
        selectedCountryData <- gapminder[gapminder$country == country & 
                                             gapminder$year >= startYear & 
                                             gapminder$year <= endYear, 'gdpPercap']
        
        mean(selectedCountryData)
    }

gdpUSA <- getAverageGdpPerCapita('United_States', 1980, 1989)
gdpCanada <- getAverageGdpPerCapita('Canada')

print(paste('GDP of USA is', gdpUSA))