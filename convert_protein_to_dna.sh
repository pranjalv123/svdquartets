#!/bin/bash

for FOLDERNUMBER in {1..10}; do
    cd ~/SVD_experiments/10-taxon/model.10.1800000.0.000000111/$FOLDERNUMBER/
    for FILENUMBER in {1..1000}; do
	sed 's/protein/dna/g' ${FILENUMBER}_TRUE.nexus > temp
	mv temp ${FILENUMBER}_TRUE.nex
    done
done

#for FOLDERNUMBER in {1..50}; do
#    cd ~/SVD_experiments/10-taxon/model.10.200000.0.000001000/$FOLDERNUMBER/
#    for FILENUMBER in {1..1000}; do
#	sed 's/protein/dna/g' ${FILENUMBER}_TRUE.nexus > temp
#	mv temp ${FILENUMBER}_TRUE.nex
#    done
#done

#for FOLDERNUMBER in {1..50}; do
#    cd ~/SVD_experiments/10-taxon/model.10.5400000.0.000000037/$FOLDERNUMBER/
#    for FILENUMBER in {1..1000}; do
#	sed 's/protein/dna/g' ${FILENUMBER}_TRUE.nexus > temp
#	mv temp ${FILENUMBER}_TRUE.nex
#    done
#done

#for FOLDERNUMBER in {1..50}; do
#    cd ~/SVD_experiments/10-taxon/model.10.600000.0.000000333/$FOLDERNUMBER/
#    for FILENUMBER in {1..1000}; do
#	sed 's/protein/dna/g' ${FILENUMBER}_TRUE.nexus > temp
#	mv temp ${FILENUMBER}_TRUE.nex
#    done
#done
