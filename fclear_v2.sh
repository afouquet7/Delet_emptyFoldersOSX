#!/bin/bash


#========================================================================================================================
# Script Name: fclear_v2.sh
#
# Author: Alex Fouquet
# Date : 19.02.2020
#	Version:2.0
# Description: The following script finds and deletes hidden files as well as empty folders
#
#
# Run Information: this script can be run with bash 3.2 and will not execute under either the root or HOME directory
#
#
#
# Error Log: Any errors or output associated with the script will be displayed in termianl
#=========================================================================================================================

myDir=$(pwd)

if [ ${myDir} == "/" ] || [ ${myDir} == "$HOME" ] ; then

  echo "I will not run in root directory!"
  exit

  else

    echo "Bam!!!"
      find . -iname ".*" -type f -delete
      find . -empty -type d -delete

    fi

echo "files wehre deleted!"
