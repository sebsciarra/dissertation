## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----package_loading, echo=F--------------------------------------------------
library(easypackages)
packages <- c('nonlinSimsAnalysis', 'tidyverse', 'data.table', 'parallel', 'devtools', 'ggtext', 'egg')
libraries(packages)


## ----pre_knitting_setup, echo=F, eval=F---------------------------------------
#  #code should be computed before knitting to decrease knitting time
#  #load data from experiments
#  exp_1 <- read_csv(file = 'exp_1A.csv')
#  exp_2 <- read_csv(file = 'exp_2.csv')
#  exp_3 <- read_csv(file = 'exp_3.csv')
#  
#  #data cleaning procedure for each data set
#  #filter out values for each parameter under each condition
#  exp_1_filtered <- remove_outliers(data = exp_1)
#  exp_2_filtered <- remove_outliers(data = exp_2)
#  exp_3_filtered <- remove_outliers(data = exp_3)
#  
#  #convert variance values to SD values for random effect parameters
#  exp_1_cleaned <- convert_var_to_sd(data = exp_1_filtered)
#  exp_2_cleaned <- convert_var_to_sd(data = exp_2_filtered)
#  exp_3_cleaned <- convert_var_to_sd(data = exp_3_filtered)
#  
#  #compute summary values
#  summary_exp_1 <- compute_estimate_summary(data = exp_1_cleaned, exp_num = 1)
#  summary_exp_2 <- compute_estimate_summary(data = exp_2_cleaned, exp_num = 2)
#  summary_exp_3 <- compute_estimate_summary(data = exp_3_cleaned, exp_num = 3)
#  
#  
#  #write summary data
#  write_csv(x = summary_exp_1, file = 'summary_exp_1.csv', )
#  write_csv(x = summary_exp_2, file = 'summary_exp_2.csv')
#  write_csv(x = summary_exp_3, file = 'summary_exp_3.csv')
#  
#  #store classes of each column
#  col_types_exp_1 <- unlist(lapply(X = summary_exp_1, FUN = class))
#  col_types_exp_2 <- unlist(lapply(X = summary_exp_2, FUN = class))
#  col_types_exp_3 <- unlist(lapply(X = summary_exp_3, FUN = class))
#  
#  #create data.frame that oc
#  

