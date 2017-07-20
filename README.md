### Installation of Required Software
* Installation of Java

```
	$ sudo apt-get install -y software-properties-common
	$ sudo apt-get install -y python-software-properties
	$ sudo add-apt-repository ppa:webupd8team/java
	$ sudo apt-get update
	$ sudo apt-get install -y oracle-java8-installer
```
* Installation of Libboost

```
	$ sudo apt-get install -y cmake unzip libblkid-dev e2fslibs-dev libboost-all-dev libaudit-dev
```

* Installation of G-test 

```
	$ sudo apt-get install -y libgtest-dev
	$ cd /usr/src/gtest
	$ sudo cmake .
	$ sudo make
	$ sudo cp libg* /usr/lib/
```

* Installation and setup of Fast-RTPS

```
	$ git clone --recursive https://github.com/eProsima/Fast-RTPS	
```

### Setup for fastrtps
* To set ENV variables for fastrtpsgen and FASTRTPSHOME:

```	$ cd ~/Fast-RTPS
	$ echo "export FASTRTPSHOME=${PWD}" >> ~/.bashrc
	$ echo "export PATH=$PATH:${PWD}/fastrtpsgen/scripts" >> ~/.bashrc
	$ source ~/.bashrc
	$ mkdir build -p && cd build
	$ cmake ../ -DBUILD_JAVA=ON -DEPROSIMA_BUILD=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=install
	$ make
	$ make install
```

* Installation of Gradle

```
	$ cd Fast-RTPS/fastrtpsgen
	$ wget https://services.gradle.org/distributions/gradle-3.4-bin.zip
	$ sudo unzip -d /opt/gradle gradle-3.4-bin.zip
	$ export PATH=$PATH:/opt/gradle/gradle-3.4/bin
	$ rm gradle-3.4-bin.zip
```
* Fastrtpsgen

```
	$ cd Fast-RTPS/fastrtpsgen
	$ sudo gradle build
```


### Documentation
* fastrtps (https://github.com/grassjelly/Fast-RTPS)
* fastrtps_minimal (https://github.com/grassjelly/fastrtps_minimal)




