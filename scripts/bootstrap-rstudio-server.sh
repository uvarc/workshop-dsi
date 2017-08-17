#!/bin/bash

#
# This script does the following:
#   - updates the instance software/OS
#   - changes the password for the 'ubuntu` user (for RStudio web access later)
#   - installs R, gdebi, and Rstudio itself. Runs as a daemon on port 8787
#

apt-get -y update
apt-get -y upgrade

echo 'ubuntu:rstudio'|chpasswd

apt-get -y install r-base
apt-get -y install gdebi-core
cd /tmp
wget https://download2.rstudio.org/rstudio-server-1.0.136-amd64.deb
gdebi --n rstudio-server-1.0.136-amd64.deb
