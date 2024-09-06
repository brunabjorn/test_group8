#----Script Header-------------------------####
# Date: 
# Author: 
# Filename:     
# Description:  
#               
#               
# Project: 
#-------------------------------------------###


#Heading----
##Subtitle----

#Random basic stuff----

a <- 1
b <- 2
# y is sum of a and b
y <- a + b
y

# Creating a string variable called my_variable
my_variable <- "This is a string variable"

#Code lines with # in front will not be run by R
# Sum variables a and b
# sum_result <- a + b

#The same line without # in front
sum_result <- a + b
sum_result




5*8

a <- 5
b <- 8
z <- a * b
z

1a <- 5
b <- 8
z <- 1a * b
z
#error since name can not start with number i.e 1a

#do_this(to_this)
#do_that(to_this, to_that, with_those)

a <- 1
b <- 2
y <- sum(a,b) # sum() is an R function
y

sum
sd
cb

Sys.Date() # some functions requires no argument
log(100) # some functions have one or more 

#Some arguments are optional ??? careful Check default values for optional arguments.

log(100, base = 10)

#If the function has many arguments, it is better to write them openly:
log(x = 100, base = 10)

args(log)

?sum
example("sum") # shows example usage

#vector---
c(1,2,3)
my_vector <- c("a","b")
my_vector
c(my_vector,"c")

#Hands-On----
sqrt(10)

pi <- 3.14159265359
round(pi, 2)

word <- "HeLLo"
tolower(word)
toupper(word)

word2 <- HeLLo #does not work since you need ""
tolower(word2)
toupper(word2)

#rnorm()
args(rnorm)
# these arguments are optional: mean, sd
# default values of optional arguments are: mean = 0 and sd = 1

y <- rnorm(n = 100, mean = 100, sd = 15)
mean(y)
sd(y)
y
head(y)
tail(y)
hist(y)

head(rnorm(n = 100, mean = 100, sd = 15))

set.seed(123)
head(rnorm(n = 100, mean = 100, sd = 15))

set.seed(210997)
head(rnorm(n = 100, mean = 100, sd = 15))


#Functions slide ----
matrix1 <- cbind(c(2, 3, 5), 
                 c(3.5, 4, 9), 
                 c(2, 5, 5), 
                 1:3) # 1:3 means from 1 to 3
matrix1

typeof(matrix1)
class(matrix1)


matrix2 <- cbind(A = c(2, 3, 5), 
                 B = c("I", "am", "here"), 
                 C = c(2, 5, 5), 
                 D = c(T, F, T))
matrix2

typeof(matrix2)
class(matrix2)


df1 <- cbind.data.frame(A = c(2, 3, 5), 
                        B = c(3.5, 4, 9), 
                        C = c(2, 5, 5), 
                        D = 1:3)
df1
typeof(df1)
class(df1)

df2 <- cbind.data.frame(A = c(2, 3, 5), 
                        B = c("I", "am", "here"), 
                        C = c(2, 5, 5), 
                        D = c(T, F, T))
df2

typeof(df2)
class(df2)


list1 <- list(A = c(2, 3, 5), 
              B = c("I", "am", "here"), 
              C = c(2, 5, 5), 
              D = c(T, F, T))
list1

typeof(list1)
class(list1)


list2 <- list(A = c(2, 3, 5, 8, 10), 
              B = c("I", "am", "here"), 
              C = 1:100, 
              D = c(T, F, T, F))
list2
#Here: no restriction on length of the different vectors..

list2$A
df2$A
matrix2$A #error 
matrix1[1,3] # use [] and specify row and column indices
df1[1,"A"] # or row index and column name (or other variations)

#The columns can also be reached by using [[]]
df2[[2]]
df2[["B"]]

matrix2[[2]]
matrix2[["B"]] #error

#How to reach an element inside a list element?
list2[[2]][1]

#We have set of month entries for a vector:
x1 <- c("Dec", "Apr", "Jan", "Mar")
c("Dec", "Apr", "Jam", "Mar") #typo
sort(x1) #sorting

x1_levels <- 
  c("Jan", "Feb", "Mar", "Apr", "May", "Jun", 
    "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
x1 <- factor(c("Dec", "Apr", "Jam", "Mar"), levels = x1_levels)
x1
x1 <- factor(c("Dec", "Apr", "Jan", "Mar"), levels = x1_levels)
x1
sort(x1)

#If you omit the levels, they???ll be taken from the data in alphabetical order:
x1 <- factor(c("Dec", "Apr", "Jan", "Mar"))
x1

#The factor levels are numerical order of data in your vector
x1 <- factor(c("Dec", "Apr", "Jan", "Mar"))
x1
as.numeric(x1)


#The factor levels are numerical order of data in your vector
x1 <- factor(c("Dec", "Apr", "Jan", "Mar"))
x1
as.numeric(x1)
x1 <- factor(c("Dec", "Apr", "Jan", "Mar"), levels = x1_levels)
x1
as.numeric(x1)
