for chrom in {1..22};
    do sbatch \
        --nodes=1 \
        --ntasks=1 \
        --cpus-per-task=16 \
        --time=7-00:00:00 \
        --mem=120GB \
        --partition=shared \
        --export=chrom=${chrom} \
        --job-name=PCa_ukb_step2_chr${chrom} \
        --out=%x.jobID%j \
        PCa_ukb_step2.qsub;
done