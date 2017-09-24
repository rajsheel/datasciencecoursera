pollutantmean <- function(directory, pollutant, id = 1:332) {

	start <- end <- 0
	pollutant_data_total <- numeric()
	for (i in id) {

		file_nam <- paste(directory, "/", formatC(i, width = 3, flag = 0), ".csv", sep = "")
		
		pollutant_data <- read.csv(file_nam)
		
		pollutant_data_type <- pollutant_data[, pollutant]
		
		size <- length(pollutant_data_type)
		
		if (size > 0) {
			start <- end + 1
			end <- start + size - 1
			pollutant_data_total[start:end] <- pollutant_data_type
		}
	}
	mean(pollutant_data_total[!is.na(pollutant_data_total)])
}
