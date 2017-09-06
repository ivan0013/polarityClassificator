#!/bin/bash

./Linguakit/linguakit tagger  es  $1 | ./Linguakit/scripts/AdapterFreeling-es.perl |./Linguakit/parserFromDPG.perl -fa 2>/dev/null| ./Linguakit/scripts/saidaCoNLL-fa.perl | grep "pol:" 
