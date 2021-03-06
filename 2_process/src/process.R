# Title     : TODO
# Objective : TODO
# Created by: jsadler
# Created on: 6/10/2020

process_data <- function(mendota_file, outfile){
    eval_data <- readr::read_csv(mendota_file, col_types = 'iccd') %>%
        filter(str_detect(exper_id, 'similar_[0-9]+')) %>%
        mutate(col = case_when(
            model_type == 'pb' ~ '#1b9e77',
            model_type == 'dl' ~'#d95f02',
            model_type == 'pgdl' ~ '#7570b3'
        ), pch = case_when(
            model_type == 'pb' ~ 21,
            model_type == 'dl' ~ 22,
            model_type == 'pgdl' ~ 23
        ), n_prof = as.numeric(str_extract(exper_id, '[0-9]+')))
    
    readr::write_csv(eval_data, path = outfile)
}
