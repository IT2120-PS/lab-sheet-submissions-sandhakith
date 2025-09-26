

getwd()
#Q1

setwd("C:\\Users\\sandh\\Downloads\\Lab 08-20250926")
data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)

attach(data)


popmn<-mean(Weight.kg.)

popvar<-var(Weight.kg.)

popmn
popvar
#2


samples<-c()
n<-c()

for (i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
  
}
colnames(samples)=n

s.means<-mean(samples,2,mean)
s.means
s.vars<-apply(samples,2,var)
s.vars

#3


samplemeans<-mean(s.means)
samplemeans

samplevars<-var(s.means)
samplevars

popmn
samplemeans
 
truvar=popvar/6
truvar

samplevars



