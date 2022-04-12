#!/bin/bash
mkdir -p error
mkdir -p log
mkdir -p output
wget https://pages.stat.wisc.edu/~jgillett/479/CHTC/wordCounting/shakespeare.tar
tar -xvf shakespeare.tar
cat shakespeare/*/* > plays
nProcessors=5
data="plays"
nDataLines=$(wc -l < $data)
nLinesPerSplitFile=$(($nDataLines / $nProcessors))
remainder=$(($nDataLines % $nProcessors))
if [[ $remainder > 0 ]]; then
  nLinesPerSplitFile=$(($nLinesPerSplitFile + 1))
fi
split -d -l $nLinesPerSplitFile $data "$data."
