## This functions creates a histgram of Global Active Power from household power consumption dataframe.

setwd('/Users/teresakle/Coursera')

plot1 <- function() {
        
        # Load clean dataframe from the separate function created to clean data
        source('clean_df.R')
        
        # Create histogram and saving plot to PNG file 
        png('plot1.png', width = 480, height = 480)
        hist(n_df$Global_active_power, col = 'red', main = 'Global Active Power', 
             xlab = 'Global Active Power (kilowatts)')
        dev.off()
        
}

plot1()