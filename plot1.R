library(data.table)

plot1 <- function() {
#if(!file.exists(".//data")){dir.create(".//data")}
#fileurl <- "http://d396qusza40orc.cloudfront.net/exdata_data_household_power_consumption.zip?access_type=DOWNLOAD"
#download.file(fileurl,destfile=".//data//exdata_data_household_power_consumption.zip")
#unzip(".//data//exdata_data_household_power_consumption.zip")

# Read the file using csv2
  DT <- read.csv2(".//data//household_power_consumption.txt",dec=".",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings="?")

# Subset the data for 2007-02-01 and 2007-02-02
  DT1 <- subset(DT, as.Date(DT$Date, "%d/%m/%Y") > "2007-01-31" & as.Date(DT$Date, "%d/%m/%Y") < "2007-02-03")


#Write plot1 to a png file
  png(filename=".//data//plot1.png",width=480,height=480)
  hist(DT1$Global_active_power,col="Red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
  dev.off()

}
