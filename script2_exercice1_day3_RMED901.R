
#Description: test code 
#Name of the author: Kathrine Brun 

#Setup ----
library(tidyverse)
library(modeldata)
#tidyverse and modeldata packages opened

##Read and explore data ----
data(ames)
#dataset called ames opened

##Analyse ----
dim(ames)
#showing how many observations and how many variables in total

head(ames, 20)
#showing the first 20 observations of all the variables

tail(ames)
#showing the last 20 observations of all the variables

some_prices <- ames[, c("Garage_Type", "Year_Built", "Sale_Price")]
#creating a dataframe called some_prices that contains all observations of three named categories. 


ms <- some_prices$Sale_Price[some_prices$Year_Built == 2006]
#within some_prices dataset, extract the Sale_price of the sales prices within year 2006

prices_in_2006<-ms
prices_in_2006
#renaming the ms to "prices_in_2006"

m <- mean(ms)
# extracting the mean price of ms

m_max <- max(ms)
# finding the maximum price in 2006

cat("Max: ", m_max, "; mean: ", m)
#categorizing the maximum price and the mean price.

?cat
