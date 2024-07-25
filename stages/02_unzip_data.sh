#!/usr/bin/env bash

mkdir -p ./extract

tar -xvf download/pfam.tar.gz -C extract/

tar -xvf  download/secondary_structure.tar.gz -C extract/
tar -xvf  download/proteinnet.tar.gz -C extract/
tar -xvf  download/remote_homology.tar.gz -C extract/
tar -xvf  download/fluorescence.tar.gz -C extract/
tar -xvf  download/stability.tar.gz -C extract/

