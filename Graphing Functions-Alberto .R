#Graphing Functions: Alberto Guzman-Alvarez

#calling in data
library(readr)
dat <- read_csv("~/HW10DHSGroup2/newdat.csv")
View(dat)


ScatterDotSize<-function(x, y, s){
  df <- data.frame(x,y,s) #ggplot needs to have an df input, so creating the dataframe inside the function
  library(ggplot2)
  ggplot(aes(x=x, y=y), data = df) +
    geom_point(aes(size=s)) +    # Use hollow circles
    geom_smooth(method=lm) +  # Add linear regression line 
    geom_jitter()
}


ScatterDotSize(dat$nMH,dat$nClose,dat$nClients)




