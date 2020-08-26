#!/bin/bash
#SBATCH --output=logs                                                          
#SBATCH --time=1-0
#SBATCH --partition=production

time /share/siegellab/steph/software/Rosetta_old/Rosetta/main/source/bin/rosetta_scripts.default.linuxgccrelease -database /share/siegellab/steph/software/Rosetta_old/Rosetta/main/database/ @multidock-flags -overwrite -parser:protocol multi-docking.xml -s 1z25_oxo_813oh.pdb -out:level 1000 -nstruct 100 -suffix _$SLURM_ARRAY_TASK_ID


