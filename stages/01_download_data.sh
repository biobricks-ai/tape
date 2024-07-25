#!/usr/bin/env bash

mkdir -p ./download

# PFAM Download -- Optional --
wget -O download/raw_pfam.tar.gz http://s3.amazonaws.com/songlabdata/proteindata/data_raw_pytorch/pfam.tar.gz

# Download Vocab/Model files
wget -O download/raw_pfam.model http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/pfam.model
wget -O download/raw_pfam.vocab http://s3.amazonaws.com/songlabdata/proteindata/data_pytorch/pfam.vocab

# Download Data Files
wget -O download/raw_secondary_structure.tar.gz http://s3.amazonaws.com/songlabdata/proteindata/data_raw_pytorch/secondary_structure.tar.gz
wget -O download/raw_proteinnet.tar.gz http://s3.amazonaws.com/songlabdata/proteindata/data_raw_pytorch/secondary_structure.tar.gz
wget -O download/raw_remote_homology.tar.gz http://s3.amazonaws.com/songlabdata/proteindata/data_raw_pytorch/remote_homology.tar.gz
wget -O download/raw_fluorescence.tar.gz http://s3.amazonaws.com/songlabdata/proteindata/data_raw_pytorch/fluorescence.tar.gz
wget -O download/raw_stability.tar.gz http://s3.amazonaws.com/songlabdata/proteindata/data_raw_pytorch/stability.tar.gz
