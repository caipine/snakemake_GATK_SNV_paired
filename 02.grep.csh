foreach sample ( "`cat sample.list`" )
foreach normal ( "`cat normal.list`" )

grep -v '^#' annotated/${sample}/3.passed.miss.${sample}_to_${normal}_ann.vcf  | awk -F" " '{print $1 " "  $2 " " $4 " " $5}' > annotated/${sample}/table_${sample}_to_${normal}_9.txt
grep -v '^#' annotated/${sample}/3.passed.miss.${sample}_to_${normal}_ann.vcf  | awk -F"ANN=" '{print $2 " " }' |  awk -F"|"   '{print $4 " " $10 " " $11 " "}'   > annotated/${sample}/table_${sample}_to_${normal}_9.gene
paste  annotated/${sample}/table_${sample}_to_${normal}_9.txt   annotated/${sample}/table_${sample}_to_${normal}_9.gene  > annotated/${sample}/gene_table_${sample}_to_${normal}_9.txt

end
end
