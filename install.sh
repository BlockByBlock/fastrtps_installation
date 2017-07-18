#!/bin/bash

sudo apt-get install -y software-properties-common
sudo apt-get install -y python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer

sudo apt-get update
sudo apt install cmake
sudo apt install unzip

sudo apt-get install -y libgtest-dev
cd /usr/src/gtest
sudo cmake .
sudo make
sudo cp libg* /usr/lib/

sudo apt-get install -y cmake libblkid-dev e2fslibs-dev libboost-all-dev libaudit-dev

cd ~/
wget https://services.gradle.org/distributions/gradle-3.4-bin.zip
sudo unzip -d /opt/gradle gradle-3.4-bin.zip
export PATH=$PATH:/opt/gradle/gradle-3.4/bin
rm gradle-3.4-bin.zip

git clone --recursive https://github.com/eProsima/Fast-RTPS	

echo "export FASTRTPSHOME=${PWD}" >> ~/.bashrc
echo "export PATH=$PATH:${PWD}/fastrtpsgen/scripts" >> ~/.bashrc
source ~/.bashrc
cd ~/Fast-RTPS
mkdir build -p && cd build
cmake ../ -DBUILD_JAVA=ON -DEPROSIMA_BUILD=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=install
make
make install

cd ~/Fast-RTPS/fastrtpsgen
sudo gradle build