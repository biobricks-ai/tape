#!/usr/bin/env bash

mkdir -p ./downloads

# PFAM Download -- Optional --

wget http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/pfam.tar.gz
tar -xvf pfam.tar.gz -C ./downloads
rm pfam.tar.gz

# Download Vocab/Model files
wget http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/pfam.model
wget http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/pfam.vocab

mv pfam.model downloads
mv pfam.vocab downloads

# Download Data Files
wget http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/secondary_structure.tar.gz
wget http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/proteinnet.tar.gz
wget http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/remote_homology.tar.gz
wget http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/fluorescence.tar.gz
wget http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/stability.tar.gz

# Unzip Files

tar -xvf secondary_structure.tar.gz -C ./downloads
tar -xvf  proteinnet.tar.gz -C ./downloads
tar -xvf  remote_homology.tar.gz -C ./downloads
tar -xvf  fluorescence.tar.gz -C ./downloads
tar -xvf  stability.tar.gz -C ./downloads
