# EPN, Tue May 30 11:40:42 2017
#
# This file explains how to install the ribosensor.pl 
# script for sequence analysis of ribosomal RNA sequences with profile
# HMMs and BLASTN.
# 
# This directory contains one other file: install.sh. 
#
# Copy install.sh into the directory you want to install the software.
# I recommend creating a new directory and copying install.sh to that
# directory.
#
# By default install.sh will install the following:
# 
# - ribosensor-wrapper package with the ribosensor.pl perl script
#
# - ribotyper-v1 package with the ribotyper.pl perl script that is
#   called by ribosensor.pl, and the ribo.pm perl module
# - 16S_sensor shell script that is called by ribosensor.pl
# - epn-options.pm perl module
#
# install.sh will also output instructions on how to define or modify
# your $RIBOSENSORDIR, $SENSORDIR, $RIBODIR, $PERL5LIB, and $PATH
# environment variables in your .bashrc of .cshrc file, a necessary
# step you need to complete before you can run ribosensor.pl
#
# install.sh DOES NOT install Infernal or BLASTN, both of which must
# be installed (Infernal v1.1.2 and BLAST 2.6.0+) before you can run
# ribosensor.pl. These are already installed in system-wide
# directories at NCBI. However, there is commented out code in
# install.sh for installing Infernal v1.1.2. If you want install.sh to
# install Infernal you'll need to modify that file to uncomment those
# lines.
#
# -----------------------------------------------
# An example of cloning the github repository with the install.sh 
# script and running it in a new directory called ribosensor-dir in
# your home directory would be:
#
# 'git clone https://github.com/nawrockie/ribosensor_install_script.git'
# 'mkdir ~/ribosensor-dir'
# 'cp ribosensor_install_script/install.sh ~/ribosensor-dir'
# 'cd ~/ribosensor-dir'
# 'source ./install.sh'
#
