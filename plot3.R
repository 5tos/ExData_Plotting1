plot3 <- function() {

# Exploratory Data Analysis - Course Project 1

# Note: The data file must be in the same folder as this R file

# Read in the required data for the two days 1/2/2007 and 2/2/2007
hpc<-subset(read.csv("household_power_consumption.txt", header = TRUE, sep = ";", na.string=c("?")), Date=="1/2/2007" | Date=="2/2/2007")

# Add a datetime column to the data
hpc$datetime<-strptime(paste(hpc$Date,hpc$Time),format="%d/%m/%Y %H:%M:%S")

# Open a png file:
png(file = "plot3.png", width = 480, height = 480, units = "px")

# Plot the chart
plot(hpc$datetime, hpc$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(hpc$datetime,hpc$Sub_metering_2, type="l", col="red")
lines(hpc$datetime,hpc$Sub_metering_3, type="l", col="blue")

legend("topright", lty=1, col=c("black","red","blue"), legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# Close the file
dev.off()

}