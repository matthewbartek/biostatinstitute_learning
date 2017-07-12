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

###how many people in the class
dim(data_2017)

###JSON
install.packages("jsonlite")
library(jsonlite)
github_url = "https://api.github.com/users/jtleek/repos"
jsonData <- fromJSON(github_url)
dim(jsonData)
jsonData$name
View(jsonData)

github_url = "https://api.github.com/users/hadley/repos"
hadley_data <- fromJSON(github_url)
dim(hadley_data)
hadley_data$stargazers_count
hadley_data$open_issues

##Lab on dyplr
library(readxl)
X1000genomes <- read_excel("~/Downloads/1000genomes.xlsx", sheet = "Final Phase Sequence Data")
View(X1000genomes)
# subset to just low coverage
x1k_g = X1000genomes[,1:7]
colnames(x1k_g) <- x1k_g[1,]
x1k_g <- x1k_g[-1,]
colnames(x1k_g) = colnames(x1k_g) %>% tolower() %>% gsub(x=.,pattern=" ",replacement="") %>% substr(1,10)
x1k_g %>% group_by(platform) %>% summarize(sum(totalseque))
View(x1k_g)

    