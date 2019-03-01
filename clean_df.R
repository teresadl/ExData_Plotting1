## Function that cleans household power consumption dataframe. Inputs are text file
# and days vector, which hold time period user wants to analyze. Returns clean dataframe.

setwd('/Users/teresakle/Coursera')

clean_df <- function(file, days) {
        df <- read.table(file = file, header = T, sep = ';', na.strings = '?')
        n_df <- df[df$Date %in% days, ]
        SetTime <- strptime(paste(n_df$Date, n_df$Time, sep = ''), '%d/%m/%Y %H:%M:%S')
        n_df <- cbind(SetTime, n_df)
        return(n_df)
}

clean_df(file = 'household_power_consumption.txt', days = c("1/2/2007","2/2/2007"))
