plot1 <- function(){
  x <- read.table("C:/R/Exploratory data analysis/week 1/household_power_consumption.txt",header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
  y <- subset(x,x$Date == "1/2/2007")
  z <- subset(x,x$Date == "2/2/2007")
  Newdata <- rbind(y,z)
  png("C:/R/Exploratory data analysis/week 1/plot1.png",width = 480, height = 480)
  hist(as.numeric(Newdata$Global_active_power), col = "red", xlab = "Global Active Power (kilowatts)",main = "Global Active Power")
  dev.off()
}

plot2 <- function(){
  x <- read.table("C:/R/Exploratory data analysis/week 1/household_power_consumption.txt",header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
  y <- subset(x,x$Date == "1/2/2007")
  z <- subset(x,x$Date == "2/2/2007")
  Newdata <- rbind(y,z)
  timeslot <- strptime(paste(Newdata$Date,Newdata$Time),"%d/%m/%Y %H:%M:%S")
  png("C:/R/Exploratory data analysis/week 1/plot2.png",width = 480, height = 480)
  plot(timeslot,as.numeric(Newdata$Global_active_power),ylab = "Global Active Power (kilowatts)",type = "l",xlab = "")
  dev.off()
}

plot3 <- function(){
  x <- read.table("C:/R/Exploratory data analysis/week 1/household_power_consumption.txt",header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
  y <- subset(x,x$Date == "1/2/2007")
  z <- subset(x,x$Date == "2/2/2007")
  Newdata <- rbind(y,z)
  png("C:/R/Exploratory data analysis/week 1/plot3.png",width = 480, height = 480)
  plot(timeslot,as.numeric(Newdata$Sub_metering_1),ylab = "Energy sub metering",type = "l",col = "black",xlab = "")
  lines(timeslot,as.numeric(Newdata$Sub_metering_2),col = "red")
  lines(timeslot,as.numeric(Newdata$Sub_metering_3),col = "blue")
  legend("topright",c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lty = 1, lwd = 2,col = c("black","red","blue"))
  dev.off()
}

plot4 <- function(){
  x <- read.table("C:/R/Exploratory data analysis/week 1/household_power_consumption.txt",header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
  y <- subset(x,x$Date == "1/2/2007")
  z <- subset(x,x$Date == "2/2/2007")
  Newdata <- rbind(y,z)
  png("C:/R/Exploratory data analysis/week 1/plot4.png",width = 480, height = 480)
  par(mfrow = c(2,2))
  plot(timeslot, as.numeric(Newdata$Global_active_power),ylab = "Global Active Power", type = "l", col = "black", xlab = "")
  plot(timeslot, as.numeric(Newdata$Voltage),ylab = "Voltage", type = "l", col = "black", xlab = "daytime")
  plot(timeslot,as.numeric(Newdata$Sub_metering_1),ylab = "Energy sub metering",type = "l",col = "black",xlab = "")
  lines(timeslot,as.numeric(Newdata$Sub_metering_2),col = "red")
  lines(timeslot,as.numeric(Newdata$Sub_metering_3),col = "blue")
  legend("topright",c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lty = 1, lwd = 2,col = c("black","red","blue"))
  plot(timeslot, as.numeric(Newdata$Global_reactive_power),ylab = "Global_Reactive_Power", type = "l", col = "black",xlab = "daytime")
  dev.off()
}