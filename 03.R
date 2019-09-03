

samples <- read.table("sample.list")[,1]
samples
#samples <- "MCL72"

normals <- read.table("normal.list")[,1]
normals

length(samples)
length(normals)


for (i in 1:length(samples) ) {
print(samples[i])
file1 <- paste("annotated/", samples[i], "/gene_table_", samples[i], "_to_", normals[1],  "_9.txt", sep="")
X1 <- read.table(file1, sep = " ") 
X2 <- data.frame(paste(X1$V1, X1$V2, X1$V4, X1$V5, X1$V6, sep = ":"))
X2[,2] <- 1
dim(X2)
colnames(X2) <- c("SNP", normals[1])

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
print(dim(X))
}
}


