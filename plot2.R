data <- read.table(file.choose(), header=T, sep=';', na.strings="?")
data1 <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
date2 <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(date2)

with(data1, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})