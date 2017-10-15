plot2 <- function() {
    allData <- read.table(
                            file = "household_power_consumption_subset.txt", 
                            header = TRUE, 
                            sep = ";", 
                            na.strings = c("?")
                        )
    png(filename = "plot2.png")
    par(mfrow = c(1, 1))
    with(allData, plot(Global_active_power, type = "s", axes = FALSE, col = "black", xlab = "", ylab = "Global Active Power (kilowatts)"))
    axis(side=1, labels = c("Thu", "Fri", "Sat") , at = c(1, 1440, 2880))
    axis(side=2, at=seq(0, 6, by = 2))
    dev.off()
}