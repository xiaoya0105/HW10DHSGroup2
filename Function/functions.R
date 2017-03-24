dat<-read.table("ShortenClientsMerged.txt")

# Number of people with mental health in each family
# Number of people in the family
lengthnoNA<-function(x){
  length(x[-which(is.na(x))])
}
AggregateByCase<-function(group,x){
  output<-tapply(x,group,lengthnoNA)
  data.frame(output)
}

# Close times. 
install.packages("stringi")
library("stringi")
countclosedate<-function(closedate){
  output<-str_count(x,",")
}
