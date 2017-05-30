#!/bin/bash
# The previous line forces this script to be run with bash, regardless of user's 
# shell.
#
# EPN, Tue May 30 15:08:45 2017
#
# A shell script for installing ribosensor and most of its dependencies
# (ribotyper, 16S_sensor, and the epn_options.pm and ribo.pm perl modules)
# for 16S rRNA sequence analysis.
#
# The following line will make the script fail if any commands fail
set -e
#
echo "------------------------------------------------"
echo "Determining current directory ... "
RIBOINSTALLDIR=$PWD
echo "Set RIBOINSTALLDIR as current directory ($RIBOINSTALLDIR)."

echo "------------------------------------------------"
echo "Cloning github repos with required code ... "
# Clone what we need from GitHub (these are all public)
# ribosensor
git clone https://github.com/nawrockie/ribosensor_wrapper.git
#
# ribotyper
git clone https://github.com/nawrockie/ribotyper-v1.git
#
# 16S_sensor
git clone https://github.com/aaschaffer/16S_sensor
#
# epn-options
git clone https://github.com/nawrockie/epn-options.git
#
echo "Finished cloning github repos with required code."

#
# Other software that we need to install (or already have installed and in our path):
#
# CURRENTLY THIS IS COMMENTED OUT BECAUSE I'M ASSUMING THAT 
# INFERNAL 1.1.2 IS ALREADY INSTALLED.
# IF THEY ARE NOT, UNCOMMENT ALL OF THE LINES IN THE 
# BLOCK BELOW BORDERED BY THE LINES OF ~~~~~~~~
# And you can modify the final section of this file
# which explains that Infernal executables must be
# installed.
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#echo "Installing Infernal 1.1.2 ... "
#wget eddylab.org/infernal/infernal-1.1.2.tar.gz
#tar xf infernal-1.1.2.tar.gz
#cd infernal-1.1.2
#sh ./configure $RIBOINSTALLDIR
#make
#make install
#cd easel
#sh ./configure $RIBOINSTALLDIR
#make install
#cd $RIBOINSTALLDIR
#echo "Finished installing Infernal 1.1.2"
#echo "------------------------------------------------"
#
# 

# Output the final message:
echo "The final step is to update your environment variables:"
echo ""
echo "If you are using the bash shell, add the following seven"
echo "lines to the '.bashrc' file in your home directory:"
echo ""
echo "export RIBOINSTALLDIR=\"$RIBOINSTALLDIR\""
echo 'export RIBOSENSORDIR="$RIBOINSTALLDIR/ribosensor_wrapper"'
echo 'export EPNOPTDIR="$RIBOINSTALLDIR/epn-options"'
echo 'export RIBODIR="$RIBOINSTALLDIR/ribotyper-v1"'
echo 'export SENSORDIR="$RIBOINSTALLDIR/16S_sensor"'
echo 'export PERL5LIB="$RIBODIR:$EPNOPTDIR:$PERL5LIB"'
echo 'export PATH="$RIBOSENSORDIR:$SENSORDIR:$PATH"'
echo 'export BLASTDB="$SENSORDIR:$BLASTDB"'
echo ""
echo "And then source that file to update your current"
echo "environment with the command:"
echo ""
echo "source ~/.bashrc"
echo ""
echo "If you are using the C shell, add the following seven"
echo "lines to the '.cshrc' file in your home directory:"
echo ""
echo "setenv RIBOINSTALLDIR \"$RIBOINSTALLDIR\""
echo 'setenv RIBOSENSORDIR "$RIBOINSTALLDIR/ribosensor_wrapper"'
echo 'setenv EPNOPTDIR "$RIBOINSTALLDIR/epn-options"'
echo 'setenv RIBODIR "$RIBOINSTALLDIR/ribotyper-v1"'
echo 'setenv SENSORDIR "$RIBOINSTALLDIR/16S_sensor"'
echo 'setenv PERL5LIB "$RIBODIR":"$EPNOPTDIR":"$PERL5LIB"'
echo 'setenv PATH "$RIBOSENSORDIR":"$SENSORDIR":"$PATH"'
echo 'setenv BLASTDB "$SENSORDIR:$BLASTDB"'
echo ""
echo "And then source that file to update your current"
echo "environment with the command:"
echo ""
echo "source ~/.cshrc"
echo ""
echo "(To determine which shell you use, type: 'echo \$$SHELL')"
echo ""
echo ""
echo "********************************************************"
echo "Infernal v1.1.2 and BLAST 2.6.0+ should be installed and"
echo "their executable programs should be in your path."
echo "For Infernal, this includes the easel mini-apps, such"
echo "as esl-sfetch".
echo "********************************************************"
echo ""
