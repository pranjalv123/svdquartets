#!/bin/bash

FNAME=get_quartet_svd_scores.fifo
mkfifo $FNAME 
./paup -n < $FNAME & 

# echo "tonexus format=PHYLIP fromfile=data.phy tofile=data.nex;"  > $FNAME 

echo "Execute data-snakes.nex;" > $FNAME                                         

echo "log file=log.txt start;" > $FNAME
echo "SVDQuartets showScores=yes nquartets=50;" > $FNAME                  
echo "log stop;" > $FNAME

echo "q;” > $FNAME


#add script to change each PHYLIP file svdquartets_data to NEXUS format and run through above commands
#add script to search and extract all quartets and their SVD scores from the PAUP output to a file
#add script to pass the file above to wQMC 
