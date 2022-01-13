pacman::p_load(nnet,mgcv,quantreg,systemfit,AER, car, gmodels, haven, jtools, 
               pastecs, plm, psych, stargazer,summarytools,tidyverse, rdrobust,
               openxlsx,rio,skedastic,ggmap,sf,devtools)
setwd("~/Documents/R")
options("scipen"=999,digits=2)
dates <- read.csv("insurance_data.csv",header = TRUE)

head(dates)

fix_date <- function(x){
  x %>% 
    str_replace("^(\\d{1})(/)(\\d{1})(/)(\\d{1,2})$","20\\5-0\\1-0\\3") %>% 
    str_replace("^(\\d{2})(/)(\\d{1})(/)(\\d{1,2})$","20\\5-\\1-0\\3") %>% 
    str_replace("^(\\d{1})(/)(\\d{2})(/)(\\d{1,2})$","20\\5-0\\1-\\3") %>% 
    str_replace("^(\\d{2})(/)(\\d{2})(/)(\\d{1,2})$","20\\5-\\1-\\3")
}
dates$fixed <- fix_date(dates$date)
head(dates)

