#!/usr/bin/env bash

mkdir -p ./download

# PFAM Download -- Optional --
wget -O download/pfam.tar.gz http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/pfam.tar.gz

# Download Vocab/Model files
wget -O download/pfam.model http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/pfam.model
wget -O download/pfam.vocab http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/pfam.vocab

# Download Data Files
wget -O download/secondary_structure.tar.gz http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/secondary_structure.tar.gz
wget -O download/proteinnet.tar.gz http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/proteinnet.tar.gz
wget -O download/remote_homology.tar.gz http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/remote_homology.tar.gz
wget -O download/fluorescence.tar.gz http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/fluorescence.tar.gz
wget -O download/stability.tar.gz http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/stability.tar.gz

# Unzip Files

tar -xvf  secondary_structure.tar.gz -C ./download
tar -xvf  proteinnet.tar.gz -C ./download
tar -xvf  remote_homology.tar.gz -C ./download
tar -xvf  fluorescence.tar.gz -C ./download
tar -xvf  stability.tar.gz -C ./download
