#Graphing Functions: Alberto Guzman-Alvarez

#calling in data
library(readr)
dat <- read_csv("~/HW10DHSGroup2/newdat.csv")
View(dat)


ScatterDotSize<-function(x, y, s, n){ #n is the name of dataset
  library(ggplot2)
  ggplot(aes(x=x, y=y), data = n) +
    geom_point(aes(size=s)) +
    geom_smooth(method=lm) + # Add linear regression line 
    geom_jitter()
}


ScatterDotSize(dat$nMH,dat$nClose,dat$nClients, dat)



#use this code for our specific graph, uses labels 

library(ggplot2)
ggplot(aes(dat$nMH,dat$nClose), data = dat) +
  geom_point(aes(size=dat$nClients)) +    # Use hollow circles
  geom_smooth(method=lm) +  # Add linear regression line 
  geom_jitter() +
  xlab("Number of MH Services") +
  ylab("Number of Closed Cases") +
  ggtitle("Number of DHS Mental Health Services by Number of Closed Case Dates")
