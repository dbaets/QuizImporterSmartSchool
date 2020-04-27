###########################################################################
# Import student results from Smartschool to Excel in excisting table
# Author: Dieter Baets
# Date: 27/04/2020
###########################################################################

# preset variable ---------------------------------------------------------

klas <- "5HUWE"


# Load required packages --------------------------------------------------

library(tidyverse)
library(readxl)
library(openxlsx)


# Import existing table with students -------------------------------------
t_students <- read_xlsx(path = "klassen/NaamKlasTest.xlsx")
t_score <- read.csv(file = "input/scores.csv",header = TRUE, sep = ";")
colnames(t_score) <- c("naam","email","date","score")


# Clean score data to standard name ---------------------------------------
# remove ","
t_score$name <- str_remove(t_score$naam,",")
# merge two tables
t_bind <- left_join(t_students,t_score, by = c("NAAM" = "name"))
# remove unecessairy cols
t_selected <- t_bind %>% 
  select(NAAM, KLAS, score) %>% 
  filter(KLAS == klas)

write.xlsx(x = t_selected,file = paste0("output/",klas,"testscore_smartschool.xlsx"))



