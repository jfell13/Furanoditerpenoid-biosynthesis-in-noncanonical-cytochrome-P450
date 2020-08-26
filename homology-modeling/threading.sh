#!/bin/bash
#SBATCH --time=120
#SBATCH --output=1z25-thread.out
#SBATCH --mem-per-cpu=4G
#SBATCH --partition=production

/share/siegellab/software/Rosetta_rf/main/source/bin/partial_thread.default.linuxgccrelease -database /share/siegellab/software/Rosetta_rf/main/database -in:file:fasta 1z25.fasta -in:file:alignment 1z25_th.alignment.grishin -in:file:template_pdb 5ym3_1z25.pdb -ignore_unrecognized_res T