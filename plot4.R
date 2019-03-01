## This functions creates four sub-plots from household power consumption dataframe
# throughout the given time frame.

setwd('/Users/teresakle/Coursera')

plot4 <- function() {
        
        # Load clean dataframe from the separate function created to clean data
        source('clean_df.R')
        
        # Create histogram and saving plot to PNG file 
        png('plot4.png', width = 480, height = 480)
        
        cols <- c('black', 'red', 'blue')
        labels <- c('Sub_metering 1', 'Sub_metering 2', 'Sub_metering 3')
        par(mfrow=c(2,2))
        plot(n_df$SetTime, n_df$Global_active_power, col = 'black', type = 'l', 
             xlab = '', ylab = 'Global Active Power')
        plot(n_df$SetTime, n_df$Voltage, col = 'black', type = 'l', 
             xlab = 'datetime', ylab = 'Voltage')
        plot(n_df$SetTime, n_df$Sub_metering_1, type = 'l', col = 'black', 
             xlab = '', ylab = 'Energy sub metering')
        lines(n_df$SetTime, n_df$Sub_metering_2, type = 'l', col = 'red')
        lines(n_df$SetTime, n_df$Sub_metering_3, type = 'l', col = 'blue')
        legend('topright', legend = labels,col = cols, lty = 'solid')
        plot(n_df$SetTime, n_df$Global_reactive_power, col = 'black', type = 'l', 
             xlab = 'datetime', ylab = 'Global_reactive_power')
        
        dev.off()
        
}

plot4()