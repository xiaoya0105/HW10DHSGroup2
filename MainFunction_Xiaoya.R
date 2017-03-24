#get ready
install.packages("dplyr")
library("dplyr")
install.packages("stringi")
library("stringi")
dat<-read.table("ShortenClientsMerged.txt")
dat<-arrange(dat,CaseID)

# 1 FamilyID and number of people in each family
PeopleinCase<-function(datasetname,groupname){
  datasetname<-group_by_(datasetname,groupname)
  newdata<-summarise(datasetname, nClients=n())
}

nFamily<-PeopleinCase(dat,"CaseID")

# 2 number of people recieving MH service in each family
lengthnoNA<-function(x){
  length(x[-which(is.na(x))])
}
nService<-function(x,group){
  output<-tapply(x,group,lengthnoNA)
}

nMH<-nService(dat$MH1,dat$CaseID)

# 3 number of times a family receiving CYF service (close times include NA)
nClosedate<-function(group,client,closedates){
  a<-stri_count_fixed(closedates, ",")+1
  a[which(is.na(a))]<-1
  index<-ave(client,group,FUN=seq_along)
  output<-a[which(index==1)]
}

nClose<-nClosedate(dat$CaseID,dat$CrossID,dat$CloseDate)
ratio<-round(nMH/nFamily[,2],2)
ratio<-unname(unlist(ratio[,1]))

# cbind the result 1,2 and 3 to create a new data frame. 
newdat<-cbind(nFamily,nMH,nClose,ratio)

write.csv(newdat,file = "newdat.csv")



