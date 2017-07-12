library(readr)
ufo_data_complete <- read_csv("~/OneDrive - UW Office 365/Learning/Biostats Institute/biostatinstitute_learning/ufo_data_complete.csv")ufo_data_complete <- read_csv("~/OneDrive - UW Office 365/Learning/Biostats Institute/biostatinstitute_learning/ufo_data_complete.csv")
cange

#Day 2

##Lecture on Advanced Data I/O
sheets_url = "https://docs.google.com/spreadsheets/d/18KQQd4LY5k8Ucux1MvWCsQGQJlvd0ECTnn-3ixdOKFM/pubhtml"
gsurl1 = gs_url(sheets_url)
dat = gs_read(gsurl1)
View(dat)

##Lab
sheets_url = "https://docs.google.com/spreadsheets/d/1DFNjIZsM_-KzUGooYYf0gEPwDCmQbRUS7n-yE71HLL8/pubhtml"
gsurl1 = gs_url(sheets_url)
data_2017 = gs_read(gsurl1)
View(data_2017)

#how many people in the class
dim(data_2017)

