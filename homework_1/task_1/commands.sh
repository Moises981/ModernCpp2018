#!/bin/bash

# Data Lines
dataLines=$(wc -l < ../data/data.dat)
echo "Data has" $dataLines "lines"

# Dolor or dalor words inside data
grepWord=$(grep 'dolor\|dalor' ../data/data.dat | wc -w)
echo "Data has" $grepWord "dolor and dalor words"

# Words inside data
dataWords=$(wc -w < ../data/data.dat)
echo "Data has" $dataWords "words"

# Count files inside test_folder
filesInside=$(ls ../data/test_folder |wc -w)
echo "Test Folder has" $filesInside "files"
