#Graphing Functions: Alberto Guzman-Alvarez





#make sure things come in as factor


#this will need to take in size
ScatterDotSize<-function(x, y, s){
  library(ggplot2)
  ggplot(aes(x=x, y=y)) +
    geom_point(shape=1, size=s) +    # Use hollow circles
    geom_smooth(method=lm) +  # Add linear regression line 
    scale_size(range = c(2, 10))
}

ScatterDotSize(x,y,s)