plot2 <- function() {

# Exploratory Data Analysis - Course Project 1

# Note: The data file must be in the same folder as this R file

# Read in the required data for the two days 1/2/2007 and 2/2/2007
hpc<-subset(read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.string=c("?")), Date=="1/2/2007" | Date=="2/2/2007")

# Add a datetime column to the data
hpc$datetime<-strptime(paste(hpc$Date,hpc$Time),format="%d/%m/%Y %H:%M:%S")

# Open a png file:
png(file = "plot2.png", width = 480, height = 480, units = "px")

# Plot the chart
plot(hpc$datetime, hpc$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# Close the file
dev.off()

}