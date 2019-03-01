## This functions creates a line plot of Global Active Power throughout the given time frame
# from household power consumption dataframe.

setwd('/Users/teresakle/Coursera')

plot2 <- function() {
        
        # Load clean dataframe from the separate function created to clean data
        source('clean_df.R')
        
        # Create histogram and saving plot to PNG file 
        png('plot2.png', width = 480, height = 480)
        plot(n_df$SetTime, n_df$Global_active_power, col = 'black', type = 'l', 
             xlab = '', ylab = 'Global Active Power (kilowatts)')
        dev.off()
        
}

plot2()