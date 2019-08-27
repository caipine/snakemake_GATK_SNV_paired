X <- read.csv(file="8-27.csv",header =T)
rownames(X) <- X$Sample
"AZD2281&Ibrutinib","AM0561","AM0561&Ibrutinib","Auranofin","Auranofin&Ibrutinib")
X <- X[,2:45]
colnames(X) <- c("DMSO",
"Ibrutinib","RG7112","RG7112 + Ibrutinib","BMN673","BMN673 + Ibrutinib","Carfilzomib","Carfilzomib + Ibrutinib","Bortezomib","Bortezomib + Ibrutinib","AZD8055","AZD8055 + Ibrutinib","Idelalisib","Idelalisib + Ibrutinib","ONC201","ONC201 + Ibrutinib","BEZ235","BEZ235 + Ibrutinib","Umbralisib","Umbralisib + Ibrutinib","CUDC907","CUDC907 + Ibrutinib","Venetoclax","Venetoclax + Ibrutinib","IACS10759","IACS10759 + Ibrutinib","Abemaciclib","Abemaciclib + Ibrutinib","KA2237","KA2237 + Ibrutinib","MI2","MI-2 + Ibrutinib","Volasertib","Volasertib + Ibrutinib","PIK75","PIK75 + Ibrutinib","LY3039478","LY3039478 + Ibrutinib","AZD2281","AZD2281 + Ibrutinib","AM0561","AM0561 + Ibrutinib","Auranofin","Auranofin + Ibrutinib")

library(gplots) 
library("RColorBrewer")

tiff("yang.hm.tif",width=1500,height=800)
heatmap.2(as.matrix(X[,2:44]),col=brewer.pal(11,"RdBu"),scale="row", trace="none", mar = c(10, 10),cexRow=1.5, cexCol=1.5, 
 margins=c(15,8))
 dev.off()
 
 ################
 colnames(X) <- c("DMSO",
"Ibrutinib","RG7112","RG7112&Ibrutinib","BMN673","BMN673&Ibrutinib","Carfilzomib","Carfilzomib&Ibrutinib","Bortezomib","Bortezomib&Ibrutinib","AZD8055","AZD8055&Ibrutinib","Idelalisib","Idelalisib&Ibrutinib","ONC201","ONC201&Ibrutinib","BEZ235","BEZ235&Ibrutinib","Umbralisib","Umbralisib&Ibrutinib","CUDC907","CUDC907&Ibrutinib","Venetoclax","Venetoclax&Ibrutinib","IACS10759","IACS10759&Ibrutinib","Abemaciclib","Abemaciclib&Ibrutinib","KA2237","KA2237&Ibrutinib","MI2","MI-2&Ibrutinib","Volasertib","Volasertib&Ibrutinib","PIK75","PIK75&Ibrutinib","LY3039478","LY3039478&Ibrutinib","AZD2281","AZD2281&Ibrutinib","AM0561","AM0561&Ibrutinib","Auranofin","Auranofin&Ibrutinib")
