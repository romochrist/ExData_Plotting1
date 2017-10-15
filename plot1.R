plot1 <- function() {
    allData <- read.table(
                            file = "household_power_consumption_subset.txt", 
                            header = TRUE, 
                            sep = ";", 
                            na.strings = c("?")
                        )
    png(filename = "plot1.png")
    par(mfrow = c(1, 1))
    hist(allData$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
    dev.off()
}