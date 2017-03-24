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

<<<<<<< HEAD
# Number of people in the family (number of clients in each case
Casemember<-function(group,x){
  count<-tapply(x,group,length)
}
=======
# Close times. 
install.packages("stringi")
library("stringi")
countclosedate<-function(closedate){
  output<-str_count(x,",")
}
<<<<<<< HEAD

# Put in number

=======
>>>>>>> c6f3205c7e83c6b4332a6c78063d509083e8a898
>>>>>>> 75cb0812a1e79bb42fb8974564ac9a84a057fa5b
