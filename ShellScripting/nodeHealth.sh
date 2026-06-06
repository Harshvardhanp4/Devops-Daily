#!/bin/bash


##################################

# Author: Harshvardhan
# Date: 31-05-2025
# 
# This script outputs the node health

#
# Version: V1

####################################

set -x #debug mode
set -e #exit script on error 
set -o pipefail # exit on pipe fail these above 2 commands are best practises 

adsadsdasdasd | echo #now this will cause error but still the pipe will execute
# so for it we use the command set -o pipefail

df -h

free -g

nproc 

ps -ef | grep amazon | awk -F" " '{print$2}'  

