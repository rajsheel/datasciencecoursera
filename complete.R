complete <- function(directory, id = 1:332) {

	nobs <- numeric(0)
	
	for (i in id) {

		file_nam <- paste(directory, "/", formatC(i, width = 3, flag = 0), ".csv", sep = "")
		
		pollutant_data <- read.csv(file_nam)
		
		nobs <- c(nobs,sum(complete.cases(pollutant_data)))
					
	}
	data.frame("id" = id, "nobs" = nobs)
}
