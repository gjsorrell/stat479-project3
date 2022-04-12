#!/bin/bash
export LC_ALL=C
sort -m sort.* | uniq -c > countsOfWords 
