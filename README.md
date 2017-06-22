### Installation of Required Software
* Installation of Java

```
	$ sudo apt-get install -y software-properties-common
	$ sudo apt-get install -y python-software-properties
	$ sudo add-apt-repository ppa:webupd8team/java
	$ sudo apt-get update
	$ sudo apt-get install -y oracle-java8-installer
```

* Installation of G-test

```
	$ sudo apt-get install -y libgtest-dev
	$ cd /usr/src/gtest
	$ sudo cmake .
	$ sudo make
	$ sudo cp libg* /usr/lib/
```

* Installation of Libboost

```
	$ sudo apt-get install -y cmake libblkid-dev e2fslibs-dev libboost-all-dev libaudit-dev
```

* Installation of Gradle

```
	$ sudo apt install gradle
```

* Installation and setup of Fast-RTPS

```
	$ git clone --recursive https://github.com/eProsima/Fast-RTPS	
```

### Setup for fastrtps
* To set ENV variables for fastrtpsgen and FASTRTPSHOME:

```
	$ echo "export FASTRTPSHOME=${PWD}" >> ~/.bashrc
	$ echo "export PATH=$PATH:${PWD}/fastrtpsgen/scripts" >> ~/.bashrc
	$ source ~/.bashrc
	$ mkdir build -p && cd build
	$ cmake ../ -DEPROSIMA_BUILD=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=install
	$ make
	$ make install
```

* Fastrtpsgen

```
	$ cd Fast-RTPS/fastrtpsgen
	$ gradle build
```


### Documentation
* fastrtps (https://github.com/grassjelly/Fast-RTPS)
* fastrtps_minimal (https://github.com/grassjelly/fastrtps_minimal)




