#!/bin/bash

for FOLDERNUMBER in {1..50}; do
    cd ~/SVD_experiments/10-taxon/model.10.1800000.0.000000111/$FOLDERNUMBER/
    for FILE in *; do
	mv $FILE `echo $FILE | sed -e 's:^0*::'`; 
    done	
done      
