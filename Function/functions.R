dat<-read.table("ShortenClientsMerged")
# Number of people with mental health in each family
lengthnoNA<-function(x){
  length(x[-which(is.na(x))])
}
AggregateByCase<-function(group,x){
  output<-tapply(x,group,lengthnoNA)
  data.frame(output)
}
# Close times. 

# Number of people in the family (number of clients in each case
Casemember<-function(group,x){
  count<-tapply(x,group,length)
}