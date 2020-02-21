household_power_consumption <- read.csv("D:/Coursera_EDA/exdata_data_household_power_consumption/household_power_consumption.txt", sep=";", na.strings="?")

household_power_consumption$Date <- as.Date(household_power_consumption$Date, "%d/%m/%Y")

data_household <- household_power_consumption[household_power_consumption$Date >= "2007-02-01" &
                                                      household_power_consumption$Date <= "2007-02-02",]

png("plot1.png", width = 480, height = 480)

hist(data_household$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

dev.off() 