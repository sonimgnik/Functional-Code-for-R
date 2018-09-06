#Setup header in rmarkdown
title: "Your title here"
subtitle: "Your sub-title here"
author(s): "Name"
#Today's date, based on current system date
date: "`r format(Sys.time(), '%d %B, %Y')`"
geometry: "left=3cm,right=3cm,top=2cm,bottom=2cm"
header-includes:
  - \usepackage{fancyhdr}
- \pagestyle{fancy}
- \fancyhead[CO,CE]{This is for research purposes only and should not be used for final investment decisions.}
- \fancyfoot[CO,CE]{Prepared by Nicholas Toscano}
- \fancyhead[RE,RO]{}
- \renewcommand{\footrulewidth}{0.5pt}
output: pdf_document
---------------------------------------------------------------------------------------------------------------

#Set workspace, load packages and libraries

getwd()
work<-setwd("your_file_path")

#Check for packages and install if not found

packages = c("package 1","package 2","package 3")
package.check <- lapply(packages, FUN = function(x) {
  if (!require(x, character.only = TRUE)) {
    install.packages(x, dependencies = TRUE)
    library(x, character.only = TRUE)
  }
})

search()
---------------------------------------------------------------------------------------------------------------
#write data to csv
write.csv(object, "file_name.csv")

#append unigue name and date to file name
currentDate <- Sys.Date() 
csvFileName <- paste("file_path",label,"_",currentDate,".csv",sep="")
write.csv(object,file=csvFileName) 