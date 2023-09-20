install.packages("BiocManager")
library(BiocManager)

library(Rgraphviz
library(bnlearn)
BiocManager::install("Rgraphviz")

net1=model2network("[INF][ELISA|INF][WB|ELISA:INF]")

graphviz.plot(net1, layout = "neato",highlight=list(nodes=c("INF","ELISA","WB"),fill="red",col="blue"))

net2=model2network("[INF][WB|INF][ELISA|INF]")

graphviz.plot(net2, layout = "neato",highlight=list(nodes=c("INF","ELISA","WB"),fill="red",col="blue"))
graphviz.plot(net2, layout = "dot",highlight=list(nodes=c("INF","ELISA","WB"),fill="red",col="blue"))

