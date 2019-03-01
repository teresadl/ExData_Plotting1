## This functions creates a line plot of Energy sub metering throughout the given time frame
# from household power consumption dataframe.

setwd('/Users/teresakle/Coursera')

plot3 <- function() {
        
        # Load clean dataframe from the separate function created to clean data
        source('clean_df.R')
        
        # Create histogram and saving plot to PNG file 
        png('plot3.png', width = 480, height = 480)
        
        cols <- c('black', 'red', 'blue')
        labels <- c('Sub_metering 1', 'Sub_metering 2', 'Sub_metering 3')
        plot(n_df$SetTime, n_df$Sub_metering_1, type = 'l', col = 'black', 
             xlab = '', ylab = 'Energy sub metering')
        lines(n_df$SetTime, n_df$Sub_metering_2, type = 'l', col = 'red')
        lines(n_df$SetTime, n_df$Sub_metering_3, type = 'l', col = 'blue')
        legend('topright', legend = labels,col = cols, lty = 'solid')
        
        dev.off()
        
}

plot3()