# arrange data first, then do not sort at the process

install.packages("dplyr")
library("dplyr")
install.packages("stringi")
library("stringi")

# 1 FamilyID and number of people in each family
PeopleinCase<-function(datasetname,groupname){
  dat2<-group_by_(datasetname,groupname)
  newdata<-summarise(datasetname, nClients=n())
}
# test<-CaseNumberinGroup(dat2,"CaseID")

# 2 number of people recieving MH service in each family
lengthnoNA<-function(x){
  length(x[-which(is.na(x))])
}
nService<-function(x,group){
  output<-tapply(x,group,lengthnoNA)
}
# test<-nService(dat$MH1,dat$CaseID)

# 3 number of times a family receiving CYF service (close times include NA)
nClosedate<-function(group,client,closedates){
  a<-stri_count_fixed(closedates, ",")+1
  a[which(is.na(a))]<-1
  index<-ave(client,group,FUN=seq_along)
  output<-a[which(index==1)]
}
# test<-nClosedate(dat2$CaseID,dat2$CrossID,dat2$CloseDate)

# cbind the result 1,2 and 3 to create a new data frame. 



