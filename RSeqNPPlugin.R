library(rSeqNP)
#simulated_data_dir = system.file('extdata', 'rseq_data_simulated',package='rSeqNP')
#setwd(simulated_data_dir)
input <- function(inputfile) {
mydata <<- read.rseq(inputfile)
}
run <- function() {}
output <- function(outputfile) {
pdf(outputfile)
result = rSeqNP.Main(exp_object=mydata, type='twoclass',
gamma=NULL, outcome=c(rep(1,10), rep(2,10)),
nperm=1e5, seed=100, exp.mean=0.5, low.exp=0.5)
gene.DE.res=result$gene.DE.result
volcano.plot(gene.DE.res, filter=F, xlim=c(-10,10),pch=20, xlab='Log 2 fold change',ylab=expression(-log~10~italic(p)-value))
}
