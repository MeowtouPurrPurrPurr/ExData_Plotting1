data.household <- read.csv("D:/Coursera_EDA/ExData_Plotting1/data household", sep="", na.strings="?")

png("plot2.png", width = 480, height = 480)

plot(data.household$Global_active_power,
     xaxt = "n",
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     type = "l")

axis(1, at = c(0,1440,2880), labels = c("Thu", "Fri", "Sat"))

dev.off() 

