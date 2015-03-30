#!/bin/bash 

SCRIPTFOLDER=SVD_experiments
cd ~/SVD_experiments/data_svd/model.10.1800000.0.000000111/

for FOLDERNUMBER in 1; do
    cd $FOLDERNUMBER
    cp ~/$SCRIPTFOLDER/paup4a142_centos64 .
    cp ~/$SCRIPTFOLDER/calculate_svd_scores.paup .
    cp ~/$SCRIPTFOLDER/paup_to_qmc_wqmc.py .
    cp ~/$SCRIPTFOLDER/max-cut-tree .
    for FILENUMBER in 1; do
	cp ./${FILENUMBER}_TRUE.nex data.nex
	./paup4a142_centos64 calculate_svd_scores.paup
	python ./paup_to_qmc_wqmc.py
	./max-cut-tree qrtt=qmc_quartet_trees.txt weights=off otre=${FILENUMBER}_qmc_tree.dat
	./max-cut-tree qrtt=wqmc_quartet_trees.txt weights=on otre=${FILENUMBER}_wqmc_tree.dat
        #./compareTrees.missingBranch qmc  
	rm paup_quartet_trees.txt
	rm data.nex
    done
    rm paup4a142_centos64*
    rm calculate_svd_scores.paup* 
    rm paup_to_qmc_wqmc.py* 
    rm max-cut-tree*
done