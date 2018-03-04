#!/bin/bash

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

sudo apt-get install oracle-java8-installer
sudo update-alternatives --config java

# filling in the command you want to customize
# $ sudo update-alternatives --config <command to custmer>

# FROM $ sudo update-alternatives --config java
# ADD: JAVA_HOME="/usr/lib/jvm/java-8-oracle"
# sudo vim /etc/environment


