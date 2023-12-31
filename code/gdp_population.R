#Script to analyze relationship between GDP and Life Expectency
#This is just for learning GitHub stuff.

library(tidyverse)
library(readr)

gapminder_1997 <- read_csv("gapminder_1997.csv")
View(gapminder_1997)

name <- "Ben"
name

age <- 26
age

name <- "Harry Potter"
name

name_character <- "Harry Potter"
name_character

#test <- read_csv("gapminder_1997.csv")

Sys.Date() #outputs current date, used for knowing when I last ran

getwd() #output current directory

sum(5,6) # adds numbers

round(3.1415, digits = 2)

read_csv(file='gapminder_1997.csv')

ggplot(data=gapminder_1997) +
  aes(x = gdpPercap, y=lifeExp) +
  labs(x="GDP Per Capita", y="Life Expectancy") +
  geom_point() +
  labs(title = "Do people in wealthy countries live longer?") +
  aes(color=continent) +
  scale_color_brewer(palette = "Set1") +
  aes(size=pop/1000000) +
  labs(size ="Population (in millions)") +
  aes(shape = continent)

ggplot(data=gapminder_1997) +
  aes(x = gdpPercap, y=lifeExp, color=continent, size=pop/1000000, shape = continent) +
  labs(x="GDP Per Capita", y="Life Expectancy", size ="Population (in millions)") +
  labs(title = "Do people in wealthy countries live longer?") +
  geom_point() +
  scale_color_brewer(palette = "Set1")

##

gapminder_data <- read_csv("gapminder_data.csv")

dim(gapminder_data)

head(gapminder_data)

ggplot(gapminder_data) +
  aes(x=year, y=lifeExp, color=continent) +
  labs(y="Life Expectency", title = "Life Expectency by Year") +
  geom_point()

