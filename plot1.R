plot1 <- function() {

# Exploratory Data Analysis - Course Project 1

# Note: The data file must be in the same folder as this R file

# Read in the required data for the two days 1/2/2007 and 2/2/2007
hpc<-subset(read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.string=c("?")), Date=="1/2/2007" | Date=="2/2/2007")

# Open a png file:
png(file = "plot1.png", width = 480, height = 480, units = "px")

# Plot the histogram
hist(hpc$Global_active_power, breaks = 12, col = "red", xlab="Global Active Power (kilowatts)", main="Global Active Power")

# Close the file
dev.off()

}