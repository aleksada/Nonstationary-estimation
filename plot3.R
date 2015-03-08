##read data
file <- 'household_power_consumption.txt'
data <- read.table(file,sep=';',na.strings="?",header=T)
datause<-subset(data,as.Date(data$Date,format="%d/%m/%Y")=='2007-02-01'|
                as.Date(data$Date,format="%d/%m/%Y")=='2007-02-02')
##Plot 3
png("plot3.png")
plot(datause$Sub_metering_1,type='l',col='black', xaxt="n",xlab="",ylab='Energy sub metering')
lines(datause$Sub_metering_2,col='red')
lines(datause$Sub_metering_3,col='blue')
len<-length(datause$Date)
axis(1, labels=c('Thu','Fri','Sat'), at=c(1,len/2,len), lty=1)
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),cex=0.8,col=c('black','red','blue'),lty=c(1,1,1))
dev.off()
