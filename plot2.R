options(stringsAsFactors=FALSE)
data=read.table("household_power_consumption.txt",sep=";",header=TRUE)


index=which(data[,1]=="1/2/2007"|data[,1]=="2/2/2007")


data1=data[index,]

png("plot2.png",height=480,width=480)
plot(as.numeric(data1$Global_active_power),type="l",ylab="Global Active Power (kilowatts)",
     xlab="",xaxt="n")
axis(side=1,at=c(which(data1$Time=="00:00:00"),length(data1$Time)),labels=c("Thu","Fri","Sat"))
dev.off()
