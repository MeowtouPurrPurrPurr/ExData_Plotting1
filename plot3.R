data.household <- read.csv("D:/Coursera_EDA/ExData_Plotting1/data household", sep="", na.strings="?")

png("plot3.png", width = 480, height = 480)

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

dev.off() 