dat<-read.table("ShortenClientsMerged.txt")
library("dplyr")
try<-arrange(dat,CaseID)
try1<-data.frame(tapply(try$CrossID,try$CaseID,length))
lengthnoNA<-function(x){
  length(x[-which(is.na(x))])
}
try2<-data.frame(tapply(try$MH1,try$CaseID,lengthnoNA))

t<-merge(try1,try2)
try1<-rownames_to_column(try1,var="CaseID")
try2<-rownames_to_column(try2,var="CaseID")




