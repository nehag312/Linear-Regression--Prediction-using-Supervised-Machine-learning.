
#Predict the percentage of a student based on the no. of study hours.

d<-read.csv(file.choose(),header=T);d  #importing data
summary(d)
attach(d)
x<-Hours  #independent variable
y<-Scores #dependent variable

#graphic representation of data
plot(x,y)

#it is clear fron the graph that there is a strong positive relation between hours of study and scores obtained.
#fitting a linear regression model in the data i.e. y=mx+c

rel<-lm(y~x)
print(summary(rel))

#plot the chart
plot(x,y,"p",col="red",pch=7,xlab="HOURS",ylab="SCORES",main="HOURS OF STUDY VS SCORES OBTAINED",ylim=c(0,100))
abline((lm(y~x)),cex=1.3,pch=16)

yp<-predict(rel,data.frame(x=9.25))
yp
print(round(yp))