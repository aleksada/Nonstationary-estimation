##read data
file <- 'household_power_consumption.txt'
data <- read.table(file,sep=';',na.strings="?",header=T)
datause<-subset(data,as.Date(data$Date,format="%d/%m/%Y")=='2007-02-01'|
                as.Date(data$Date,format="%d/%m/%Y")=='2007-02-02')
##plot4
png("plot4.png")
par(mfrow=c(2,2))
##plot4.1
plot(datause$Global_active_power,,type='l', xaxt="n",xlab="",ylab='Global Active Power')
len<-length(datause$Date)
axis(1, labels=c('Thu','Fri','Sat'), at=c(1,len/2,len), lty=1)
##plot4.2
plot(datause$Voltage,,type='l', xaxt="n",xlab="datetime",ylab='Voltage')
len<-length(datause$Date)
axis(1, labels=c('Thu','Fri','Sat'), at=c(1,len/2,len), lty=1)
#plot4.3
plot(datause$Sub_metering_1,type='l',col='black', xaxt="n",xlab="",ylab='Energy sub metering')
lines(datause$Sub_metering_2,col='red')
lines(datause$Sub_metering_3,col='blue')
axis(1, labels=c('Thu','Fri','Sat'), at=c(1,len/2,len), lty=1)
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),bty='n',cex=0.8,col=c('black','red','blue'),lty=c(1,1,1))
#plot4.4
plot(datause$Global_reactive_power,type='l', xaxt="n",xlab="datetime",ylab='Global_reactive_power')
len<-length(datause$Date)
axis(1, labels=c('Thu','Fri','Sat'), at=c(1,len/2,len), lty=1)
dev.off()
