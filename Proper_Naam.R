library (dplyr)
library (nycflights13)
library(tidyverse)
library(ggplot2)

flights
view(flights)

flights %>%
  filter(year==2013,month==1,day==2,dep_time==126)

filter(flights,year==2013,month==1,day==2,arr_time==233)


# operator and logical operator
# > greater
# == equal to
# != not equal to
# >= more than equal to
# <= less than equal to
# y&!x y and not x
# y&x y and x
# x|y x or y

# xor (x, y) (exclusive or between x and y)
# In R, the xor() function is used to evaluate exclusive-OR between x and y 
# argument values. Exclusive-OR or shortly XOR is a boolean logical operation. 
# It takes two boolean input values and returns TRUE or FALSE. 
# If input values are the same, it returns FALSE, otherwise, it returns TRUE.

# in operator
# %in%
#november and december flight filter
nov_dec <- flights %>%
  filter(month%in%c(11,12))

jun_jul <- flights %>%
  filter(month%in%c(6,7))


nov_dec$month %>% unique()
flights$month %>% unique() 

jun_jul$month %>% unique()
flights$month %>% unique()

filter(flights, month==11|month==12)

flights$day

names(flights)

flights$month==12

x_na <- NA
is.na(x_na)

x_bd <- ''
is.na(x_bd)

df <- tibble(x=c(1,NA,3)) 
df 

filter(df, x>1)

filter(df, x>1|is.na(x))

#****************************#
#exercise pg 49

flights$arr_time 
flights$arr_delay
filter(flights, arr_delay>=2) #a
filter(flights, dest%in%c("IAH","HOU")) #b

filter(flights, carrier%in%c("UA","AA","DL")) #c

filter(flights, month%in%c(7,8,9)) #d

filter(flights, arr_delay>=120 & dep_delay==0) #e

filter(flights, dep_delay>=60 & dep_delay - arr_delay> 30) #f

filter(flights, dep_time>=2400 | dep_time<=600) #g3

# Day 2 started ************************

#Arrange function

arrange(flights,month)
arrange(flights,year,day,month,dep_time)
#arrange(flights, desc(year,day,month,dep_time))       
arrange(flights, desc(dep_time),desc(arr_time))

arrange(flights, desc(year),desc(month),desc(day))

#Missing values will be sorted at the end
# we created a tibble with one column. we are calling the column X and we put c because R syntax for Vector 
df<-tibble(x=c(2,5,1,NA,6))
df
arrange(df,x) 
arrange(df,desc(x))

       