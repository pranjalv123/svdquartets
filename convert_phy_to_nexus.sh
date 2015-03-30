#!/bin/bash

cd ~/bioscripts.convert-0.4/bioscripts/convert/

for FOLDERNUMBER in {1..50}; do
    for FILENUMBER in {1..1000}; do
	python convbioseq.py nexus ~/SVD_experiments/10-taxon/model.10.1800000.0.000000111/$FOLDERNUMBER/${FILENUMBER}_TRUE.phy
    done
done

for FOLDERNUMBER in {1..50}; do
    for FILENUMBER in {1..1000}; do
	python convbioseq.py nexus ~/SVD_experiments/10-taxon/model.10.200000.0.000001000/$FOLDERNUMBER/${FILENUMBER}_TRUE.phy
    done
done 

for FOLDERNUMBER in {1..50}; do
    for FILENUMBER in {1..1000}; do
	python convbioseq.py nexus ~/SVD_experiments/10-taxon/model.10.5400000.0.000000037/$FOLDERNUMBER/${FILENUMBER}_TRUE.phy
    done
done

for FOLDERNUMBER in {1..50}; do
    for FILENUMBER in {1..1000}; do
	python convbioseq.py nexus ~/SVD_experiments/10-taxon/model.10.600000.0.000000333/$FOLDERNUMBER/${FILENUMBER}_TRUE.phy
    done
done
