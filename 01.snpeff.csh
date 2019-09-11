foreach sample ( "`cat sample.list`" )
mkdir snpeff
mkdir snpeff/${sample}
mkdir annotated
mkdir annotated/${sample}

foreach normal ( "`cat normal.list`" )

snpEff  -noStats -csvStats snpeff/${sample}/1.${sample}_to_${normal}_ann_9.csv -Xmx6g hg38 data9_${normal}/${sample}_9_somatic_oncefiltered.vcf.gz \
      > annotated/${sample}/1.${sample}_to_${normal}_9_somatic_oncefiltered.vcf.gz_ann.vcf


bcftools view -f PASS -i 'INFO/ANN ~ "missense_variant" ' --output-type v annotated/${sample}/1.${sample}_to_${normal}_9_somatic_oncefiltered.vcf.gz_ann.vcf \
      > annotated/${sample}/2.passed.${sample}_to_${normal}_9_somatic_oncefiltered.vcf.gz_ann.vcf


snpEff  -noStats -csvStats snpeff/${sample}/2.passed.miss.${sample}_to_${normal}_9_ann.csv -Xmx6g hg38 annotated/${sample}/2.passed.${sample}_to_${normal}_9_somatic_oncefiltered.vcf.gz_ann.vcf \
     >  annotated/${sample}/3.passed.miss.${sample}_to_${normal}_ann.vcf


end

end
