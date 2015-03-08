##read data
file <- 'household_power_consumption.txt'
data <- read.table(file,sep=';',na.strings="?",header=T)
datause<-subset(data,as.Date(data$Date,format="%d/%m/%Y")=='2007-02-01'|
                as.Date(data$Date,format="%d/%m/%Y")=='2007-02-02')
Global Active Power(kilowatts)',ylab='Frequency')
dev.off()
##Plot 2
png("plot2.png")
plot(datause$Global_active_power,,type='l', xaxt="n",xlab="",ylab='Global Active Power(kilowatts)')
len<-length(datause$Date)
axis(1, labels=c('Thu','Fri','Sat'), at=c(1,len/2,len), lty=1)
dev.off()

