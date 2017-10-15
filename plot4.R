plot4 <- function() {
    allData <- read.table(
                            file = "household_power_consumption_subset.txt", 
                            header = TRUE, 
                            sep = ";", 
                            na.strings = c("?")
                        )
    png(filename = "plot4.png")
    par(mfrow = c(2, 2))
    with(allData, plot(Global_active_power, type = "s", axes = FALSE, col = "black", xlab = "", ylab = "Global Active Power"))
    axis(side=1, labels = c("Thu", "Fri", "Sat") , at = c(1, 1440, 2880))
    axis(side=2, at=seq(0, 6, by = 2))
    
    with(allData, plot(Voltage, type = "s", axes = FALSE, col = "black", xlab = "datetime", ylab = "Voltage"))
    axis(side=1, labels = c("Thu", "Fri", "Sat") , at = c(1, 1440, 2880))
    axis(side=2, at=seq(234, 246, by = 4))
    
    with(allData, plot(Sub_metering_1, type = "s", axes = FALSE, col = "black", xlab = "", ylab = "Energy sub metering"))
    with(allData, lines(Sub_metering_2, type = "s", col = "red"))
    with(allData, lines(Sub_metering_3, type = "s", col = "blue"))
    axis(side=1, labels = c("Thu", "Fri", "Sat") , at = c(1, 1440, 2880))
    axis(side=2, at=seq(0, 30, by = 10))
    legend("topright", pch = "___", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), text.col = "black")
    
    with(allData, plot(Global_reactive_power, type = "s", axes = FALSE, col = "black", xlab = "datetime", ylab = "Global_reactive_power"))
    axis(side=1, labels = c("Thu", "Fri", "Sat") , at = c(1, 1440, 2880))
    axis(side=2, at=seq(0.0, 0.5, by = 0.1))
    dev.off()
}