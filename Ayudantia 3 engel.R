pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)
getwd()
pok <- read.csv("/Users/gabrielengel/Downloads/Ayudantia_DataMining01_2021-main/Ayudantia 3/pokemon.csv")
pok
install.packages("datasets")
library(datasets)
library(lmtest)
library(tidyverse)
library(ggplot2)
library(dplyr)

pok_type<- pok$Type.1
pok_type

#analisar los HP
pok_hp <- pok$HP
hist(pok$HP)

boxplot(pok_hp, horizontal = TRUE)

boxplot.stats(pok_hp)
hp_sinout <- pok_hp[pok_hp < 126]
boxplot(hp_sinout, horizontal = TRUE)
boxplot.stats(hp_sinout)

hp_sinout1 <- hp_sinout [hp_sinout > 1]
boxplot(hp_sinout1, horizontal = TRUE)
boxplot.stats(hp_sinout1)

#analisar generation
pok_gen <- pok$Generation
hist(pok$Generation)
#no hay outliers

#analisar defense
pok_def <- pok$Defense
hist(pok$Defense)

boxplot(pok_def, horizontal = TRUE)
boxplot.stats(pok_def)
def_sinout <- pok_def[pok_def<160]
boxplot(def_sinout, horizontal = TRUE) 
boxplot.stats(def_sinout)