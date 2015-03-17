#!/bin/bash

FNAME=get_quartet_svd_scores.fifo
mkfifo $FNAME 
./paup4a142_osx_leopard < $FNAME & 
echo "tonexus format=PHYLIP fromfile=data.phy tofile=data.nex;"  > $FNAME #changes data.phy from PHYLIP format to NEXUS format"
echo "Execute data.nex;" > $FNAME                                         #adds data block data.nex
echo "SVDQuartets showScores=yes nquartets=50;" > $FNAME                  #runs SVDQuartets with SVD scores displayed for each quartet

#add script to change each PHYLIP file svdquarets_data to NEXUS format and run through above commands
#add script to search and extract all quartets and their SVD scores from the PAUP output to a file
#add script to pass the file above to wQMC 
