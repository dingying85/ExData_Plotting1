options(stringsAsFactors=FALSE)
data=read.table("household_power_consumption.txt",sep=";",header=TRUE)


index=which(data[,1]=="1/2/2007"|data[,1]=="2/2/2007")


data1=data[index,]

png("plot4.png",height=480,width=480)

par(mfrow=c(2,2))
##figure 1
plot(as.numeric(data1$Global_active_power),type="l",ylab="Global Active Power (kilowatts)",
     xlab="",xaxt="n")
axis(side=1,at=c(which(data1$Time=="00:00:00"),length(data1$Time)),labels=c("Thu","Fri","Sat"))

##figure 2
plot(as.numeric(data1$Voltage),type="l",ylab="Voltage",
     xlab="datetime",xaxt="n")
axis(side=1,at=c(which(data1$Time=="00:00:00"),length(data1$Time)),labels=c("Thu","Fri","Sat"))

##figure 3
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

###figure 4
  plot(as.numeric(data1$Global_reactive_power),type="l",ylab="Global_reative_power",
     xlab="datetime",xaxt="n")
axis(side=1,at=c(which(data1$Time=="00:00:00"),length(data1$Time)),labels=c("Thu","Fri","Sat"))




dev.off()