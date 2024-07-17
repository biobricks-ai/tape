#!/usr/bin/env bash

mkdir -p ./downloads

# PFAM Download -- Optional --

wget http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/pfam.tar.gz
mv pfam.tar.gz ./downloads
rm pfam.tar.gz;

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

mv secondary_structure.tar.gz ./downloads
mv proteinnet.tar.gz ./downloads
mv remote_homology.tar.gz ./downloads
mv fluorescence.tar.gz ./downloads
mv stability.tar.gz ./downloads
