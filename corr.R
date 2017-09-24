corr <- function(directory, threshold = 0 ) {
	
	result <- complete(directory)
	result <- result[result$nobs > threshold,]
	
	corrNum <- numeric()
	
	
	
	for(i in result$id) {
			
			file_nam <- paste(directory, "/", formatC(i, width = 3, flag = 0), ".csv", sep = "")
		
		    pollutant_data <- read.csv(file_nam)
	corrNum  <- c(corrNum , cor(pollutant_data$sulfate, pollutant_data$nitrate, use="pairwise.complete.obs"))	    
					
	}
	return(corrNum)
}