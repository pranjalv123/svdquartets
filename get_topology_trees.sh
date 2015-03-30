#!/bin/bash 

cd ~/SVD_experiments/1/

for filename in {1..5}; do
    cp ./${filename}_TRUE.nexus data.nex
    ./paup4a142_centos64 calculate_svd_scores.paup
    python paup_to_qmc_wqmc.py
    ./max-cut-tree qrtt=qmc_quartet_trees.txt weights=off otre=${filename}_qmc_tree.dat
    ./max-cut-tree qrtt=wqmc_quartet_trees.txt weights=on otre=${filename}_wqmc_tree.dat
    #./compareTrees.missingBranch qmc  
    rm paup_quartet_trees.txt
    rm data.nex
done