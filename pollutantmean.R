pollutantmean<-function(directory,polltutant,id=1:332){
  myfiles = list.files(path=directory, pattern="*.csv", full.names=TRUE)
  p_sum<-0
  p_count<-0
  for (i in id){
    data<- read.csv(myfiles[i])
    if (polltutant=="sulfate"){
      idd=2
    }
    else if (polltutant=="nitrate"){
      idd=3
    }
    before_mean=data[c(1:dim.data.frame(data)[1]),c(idd)]
    p_sum<-sum(before_mean[!is.na(before_mean)])+p_sum
    p_count<-length(before_mean[!is.na(before_mean)])+p_count
  }
  p_sum/p_count
}
