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