options(stringsAsFactors=FALSE)
data=read.table("household_power_consumption.txt",sep=";",header=TRUE)


index=which(data[,1]=="1/2/2007"|data[,1]=="2/2/2007")


data1=data[index,]

png("plot3.png",height=480,width=480)
plot(as.numeric(data1$Sub_metering_1),type="l",ylab="Energy sub metering",
     xlab="",xaxt="n")
lines(as.numeric(data1$Sub_metering_2),type="l",col="red",
     xlab="",xaxt="n")
lines(as.numeric(data1$Sub_metering_3),type="l",col="blue",
      xlab="",xaxt="n")

axis(side=1,at=c(which(data1$Time=="00:00:00"),length(data1$Time)),labels=c("Thu","Fri","Sat"))
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),col=c("black","red","blue"),
       )

dev.off()