#!/bin/bash
# Manually compile and install Bio::DB::HTS

cd ~
git clone https://github.com/samtools/htslib.git
cd htslib
git submodule update --init --recursive
make
make install

cd ~
git clone https://github.com/Ensembl/Bio-DB-HTS.git
cd Bio-DB-HTS

export HTSLIB_DIR=~/htslib
export PERL5LIB=$HOME/perl5/lib/perl5:$HOME/perl5/lib/perl5/darwin-thread-multi-2level

perl Build.PL --htslib=$HTSLIB_DIR --install_base=$HOME/perl5
./Build
./Build test
./Build install
