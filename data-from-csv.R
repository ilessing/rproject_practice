# reading CSVs
rm(list=ls())
gapminder <- read.csv("data/gapminder_data.csv")
str(gapminder)
typeof(gapminder$year)
str(gapminder$country)
# levels(gapminder$country) # see all levels aka unique values
length(gapminder) # returns number of columns
nrow(gapminder)   # returns number of rows
dim(gapminder)
colnames(gapminder)

#preview  of dataset
head(gapminder)
tail(gapminder)

head(gapminder, n = 15)

# random sample of dataset
gapminder[sample(nrow(gapminder),5),]
