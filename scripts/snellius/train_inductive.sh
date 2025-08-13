#!/bin/bash
#SBATCH --job-name=tgi
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=3
#SBATCH --time=24:00:00
#SBATCH --partition=gpu_h100
#SBATCH --gpus=1
#SBATCH --output=logs/log_train_simkgc_inductive_%A.out


source /home/kzaporojets/.bashrc
#cd /home/kzaporojets/repositories/wikidata-temp/wikipedia-temp
cd /home/kzaporojets/repositories/SimKGC
#mkdir logs
git pull
conda activate evolv-kg-simkgc

OUTPUT_DIR=./checkpoint/wiki5m_ind/ bash scripts/train_wiki.sh wiki5m_ind
