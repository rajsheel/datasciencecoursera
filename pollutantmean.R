pollutantmean <- function(directory, pollutant, id = 1:332) {

	pollutant_data_total <- numeric()
	file_names <- list.files("specdata",full.names = TRUE)
	
	for (i in id) {

		file_pollutant_data <- read.csv(file_names[i])
		pollutant_data_total <- c(pollutant_data_total, file_pollutant_data[,pollutant])
		
	}
	mean(pollutant_data_total,na.rm = TRUE)
}
