library(dplyr)
library(readr)
library(stringr)
library(sbtools)

pull_data <- function(outfile){
  mendota_file <- file.path(outfile)
  item_file_download('5d925066e4b0c4f70d0d0599', names = 'me_RMSE.csv',
                     destinations = mendota_file, overwrite_file = TRUE)
}






