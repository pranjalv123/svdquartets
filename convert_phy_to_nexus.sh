#!/bin/bash

cd ~/bioscripts.convert-0.4/bioscripts/convert/

for FOLDERNUMBER in {1..10}; do
    for FILENUMBER in 0001 0002; do
	python convbioseq.py nexus ~/SVD_experiments/10-taxon/model.10.1800000.0.000000111/$FOLDERNUMBER/${FILENUMBER}_TRUE.phy
    done
done

