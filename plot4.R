data.household <- read.csv("D:/Coursera_EDA/ExData_Plotting1/data household", sep="", na.strings="?")

png("plot4.png", width = 480, height = 480)

par(mfrow = c(2,2))

##plot 1
plot(data.household$Global_active_power,
     xaxt = "n",
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     type = "l")

axis(1, at = c(0,1440,2880), labels = c("Thu", "Fri", "Sat"))

##Plot 2
plot(data.household$Voltage,
     xaxt = "n",
     xlab = "datetime",
     ylab = "Voltage",
     type = "l")

axis(1, at = c(0,1440,2880), labels = c("Thu", "Fri", "Sat"))

##plot 3
plot(data.household$Sub_metering_1,
     xaxt = "n",
     xlab = "",
     ylab = "Energy Sub metering",
     type = "l")

axis(1, at = c(0,1440,2880), labels = c("Thu", "Fri", "Sat"))

lines(data.household$Sub_metering_2,
      col = "red")

lines(data.household$Sub_metering_3,
      col = "blue")

legend("topright", col = c("black","red","blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1)

##plot 4

plot(data.household$Global_reactive_power,
     xaxt = "n",
     xlab = "datetime",
     ylab = "Global_Reactie_power",
     type = "l")

axis(1, at = c(0,1440,2880), labels = c("Thu", "Fri", "Sat"))

dev.off() 