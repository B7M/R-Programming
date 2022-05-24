complete<-function(directory, id=1:332){
  pre_table<-data.frame(id=numeric(0), nobs=numeric(0))
  for (i in id){
    count<-0
    path<-paste(getwd(),"/",directory,"/",sprintf("%03d",i),".csv",sep="")
    data<-read.csv(path)
    for (j in 1:dim.data.frame(data)[1]){
      if (!is.na(data[j,2]) & !is.na(data[j,3])){
        count<-count+1
      }
    }
    pre_table<-rbind(pre_table,data.frame(ID=i,nobs=count))
  }
  pre_table
}