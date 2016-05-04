# layout
#layout(matrix(c(1,2), 2, 1, byrow = TRUE), heights=c(3,2))

#data
this.dir <- dirname(sys.frame(tail(grep('source',sys.calls()),n=1))$ofile)
data <- read.csv(file=file.path(this.dir, "../csv/relevance_citation.csv"), header=TRUE)

relevance = data$relevance
citation = data$citation

cor(relevance, citation)


