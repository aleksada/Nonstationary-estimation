##read data
file <- 'household_power_consumption.txt'
data <- read.table(file,sep=';',na.strings="?",header=T)
datause<-subset(data,as.Date(data$Date,format="%d/%m/%Y")=='2007-02-01'|
                as.Date(data$Date,format="%d/%m/%Y")=='2007-02-02')
##Plot 1
png("plot1.png")
hist(datause$Global_active_power,col='red',main='Global Active Power',
     xlab='Global Active Power(kilowatts)',ylab='Frequency')
dev.off()
