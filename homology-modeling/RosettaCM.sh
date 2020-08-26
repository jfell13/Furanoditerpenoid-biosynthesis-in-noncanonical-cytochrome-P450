#!/bin/bash
#SBATCH --output=epiph_1z25.log
#SBATCH --mem-per-cpu=4G
#SBATCH --time=1-0
#SBATCH --partition=production

/share/siegellab/software/Rosetta_rf/main/source/bin/rosetta_scripts.default.linuxgccrelease -database /share/siegellab/software/Rosetta_rf/main/database @flags -in:file:fasta 1z25.fasta -parser:protocol hybridize.xml -out:file:silent 1z25_$SLURM_ARRAY_TASK_ID.out