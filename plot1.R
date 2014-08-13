###creat first plot
options(stringsAsFactors=FALSE)
data=read.table("household_power_consumption.txt",sep=";",header=TRUE)


index=which(data[,1]=="1/2/2007"|data[,1]=="2/2/2007")


data1=data[index,]

png("plot1.png",height=480,width=480)
hist(as.numeric(data1$Global_active_power),col="red",xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
dev.off()