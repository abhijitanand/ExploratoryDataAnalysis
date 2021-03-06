library(readr)
household_power_consumption <- read_delim("household_power_consumption.txt", ";", escape_double = FALSE, col_types = cols(Date = col_date(format = "%d/%m/%Y"), Global_intensity = col_skip()), trim_ws = TRUE)
df$Date_t <- with(df, as.POSIXct(paste(as.Date(Date, format="%Y-%m-%d"), Time)))
png(filename = "plot2.png",width = 480, height = 480, units = "px")
plot(df$Date_t, df$Global_active_power, type="n",ylab="Global Active Power(kilowatts)" ,xlab="") 
lines(df$Date_t, df$Global_active_power, type="s") 
dev.off()