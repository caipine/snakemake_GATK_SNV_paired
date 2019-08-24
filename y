tiff("yang.hm.tif",width=1500,height=750)
 heatmap.2(as.matrix(X1),col=brewer.pal(11,"RdBu"),scale="row", trace="none", mar = c(10, 10),cexRow=1.5, cexCol=1.5)
 dev.off()
