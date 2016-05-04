# set the working directory for relative paths
setwd(dirname(sys.frame(tail(grep('source',sys.calls()),n=1))$ofile))
# read the config file
source("../config.R")

# layout
#layout(matrix(c(1,2), 2, 1, byrow = TRUE), heights=c(3,2))


#data

data <- read.csv("../csv/relevance_citation.csv", header=TRUE)

relevance = data$relevance
citation = data$citation

cor(relevance, citation)


