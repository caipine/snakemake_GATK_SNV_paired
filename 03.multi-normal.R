

samples <- read.table("1069L1.samples.tsv2")[,1]
samples
#samples <- "MCL72"

normals <- read.table("903.normal.list2")[,1]
normals

length(samples)
length(normals)

Y <- t(data.frame(c("chr","0")))
colnames(Y) <- c("SNP","X")
Y<- Y[0,]


for (i in 1:length(samples) ) {

print(samples[i])
file1 <- paste("annotated/", samples[i], "/gene_table_", samples[i], "_to_", normals[1],  "_9.txt", sep="")
print(file1)
X1 <- read.table(file1, sep = " ") 
X2 <- data.frame(paste(X1$V1, X1$V2, X1$V4, X1$V5, X1$V6, sep = ":"))
X2[,2] <- 1
dim(X2)
colnames(X2) <- c("SNP", normals[1])
print(X2)

  
  
X <- X2

for (j in normals[2:length(normals)] ) {
print(j)

file <- paste("annotated/", samples[i], "/gene_table_", samples[i], "_to_", j ,  "_9.txt", sep="")
X1 <- read.table(file, sep = " ") 
X2 <- data.frame(paste(X1$V1, X1$V2, X1$V4, X1$V5, X1$V6, sep = ":"))
X2[,2] <- 1
colnames(X2) <- c("SNP",j)
print(dim(X2))
X <- merge(X, X2, by="SNP")
#print(dim(X))
print(X)

}
  X3 <- X[,1:2]  
colnames(X3) <- c("SNP",samples[i]) 
  print(X3)
  Y <- merge(Y, X3, by="SNP", all = TRUE)
  print(Y)
  print("#############################################")
}
Y<- Y[,c(1, 3:(ncol(Y)))]
Y[is.na(Y)] <- 0
colnames(Y) <- samples
Y


Y$sum <- rowSums( Y[,2:ncol(Y)] )
Y <-Y[order(Y$sum, decreasing = TRUE),]
head(Y)
dim(Y)

