#!/bin/bash

FNAME=get_quartet_svd_scores.fifo
mkfifo $FNAME 
./paup4a142_osx_leopard < $FNAME &
echo "tonexus format=PHYLIP fromfile=data.phy tofile=data.nex;"  > $FNAME
echo "Execute data.nex;" > $FNAME
echo "SVDQuartets showScores=yes nquartets=50;" > $FNAME
