#!/usr/bin/env bash


DATA_DIR="/Users/ashish/files/research/data/<path>"
TIMESTAMP=`date +%Y-%m-%d_%H-%M-%S`

cp -ri "$DATA_DIR/data/raw" data
cp -ri "$DATA_DIR/doc" .

find "$DATA_DIR/data/raw" -type f -not -name .DS_Store -exec cp -ri {} ./data/raw/ \;


echo $TIMESTAMP >> "$DATA_DIR/filecopy.log"
echo "Copied files to:" >> "$DATA_DIR/filecopy.log"
echo $(pwd) >> "$DATA_DIR/filecopy.log"
echo "" >> "$DATA_DIR/filecopy.log"
