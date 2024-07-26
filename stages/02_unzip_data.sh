#!/usr/bin/env bash

mkdir -p ./extract

tar -xvf download/raw_pfam.tar.gz -C extract/

tar -xvf  download/raw_secondary_structure.tar.gz -C extract/
tar -xvf  download/raw_proteinnet.tar.gz -C extract/
tar -xvf  download/raw_remote_homology.tar.gz -C extract/
tar -xvf  download/raw_fluorescence.tar.gz -C extract/
tar -xvf  download/raw_stability.tar.gz -C extract/

