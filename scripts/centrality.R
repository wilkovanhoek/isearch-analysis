if(!require(igraph)){
  iinstall.packages('igraph')
  library(igraph)
}

# layout
layout(matrix(c(1,2), 2, 1, byrow = TRUE), heights=c(3,2))

#data
this.dir <- dirname(sys.frame(tail(grep('source',sys.calls()),n=1))$ofile)
data <- read.csv(file=file.path(this.dir, "../csv/iSearch-direct-citations.csv.test"), header=TRUE)

citing = data$citingDoc
citatcited = data$citedDoc

el=as.matrix(data)
el



g=graph.edgelist(el[,1:2],directed=TRUE) 
plot(g, edge.arrow.size=.4)



centr_degree(g, mode="in", normalized=T)
deg <- degree(g, mode="all")

deg.dist <- degree_distribution(g, cumulative=T, mode="all")
plot( x=0:max(deg), y=1-deg.dist, pch=19, cex=1.2, col="orange", 
      xlab="Degree", ylab="Cumulative Frequency")