#!/bin/bash

for FOLDERNUMBER in {1..50}; do
    cd ~/SVD_experiments/10-taxon/model.10.1800000.0.000000111/$FOLDERNUMBER/
    for FILE in *; do
	mv $FILE `echo $FILE | sed -e 's:^0*::'`; 
    done	
done      

for FOLDERNUMBER in {1..50}; do
    cd ~/SVD_experiments/10-taxon/model.10.200000.0.000001000/$FOLDERNUMBER/
    for FILE in *; do
	mv $FILE `echo $FILE | sed -e 's:^0*::'`;
    done
done

for FOLDERNUMBER in {1..50}; do
    cd ~/SVD_experiments/10-taxon/model.10.5400000.0.000000037/$FOLDERNUMBER/
    for FILE in *; do
	mv $FILE `echo $FILE | sed -e 's:^0*::'`;
    done
done 

for FOLDERNUMBER in {1..50}; do
    cd ~/SVD_experiments/10-taxon/model.10.600000.0.000000333/$FOLDERNUMBER/
    for FILE in *; do
	mv $FILE `echo $FILE | sed -e 's:^0*::'`;
    done
done 
