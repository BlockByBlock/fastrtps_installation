## Fast-RTPS 1.5.0

### Installation  
```
	$ wget "https://github.com/eProsima/Fast-RTPS/archive/v1.5.0.tar.gz"
	$ tar -xvzf v1.5.0.tar.gz
	$ rm v1.5.0.tar.gz
	$ mv Fast-RTPS-1.5.0 Fast-RTPS
	$ cd Fast-RTPS
	$ rm -rf thirdparty
	$ mkdir thirdparty
	$ git init
	$ cd thirdparty
	$ git submodule add https://github.com/michalsrb/android-ifaddrs android-ifaddrs
	$ git submodule add https://github.com/chriskohlhoff/asio asio
	$ git submodule add https://github.com/eProsima/IDL-Parser idl
	$ git submodule add https://github.com/leethomason/tinyxml2 tinyxml2
	$ git submodule add https://github.com/eProsima/Fast-CDR fastcdr

```

### Installation of Dependencies
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


* Installation of Gradle

```
	$ wget https://services.gradle.org/distributions/gradle-3.4-bin.zip
	$ sudo unzip -d /opt/gradle gradle-3.4-bin.zip
	$ export PATH=$PATH:/opt/gradle/gradle-3.4/bin
	$ rm gradle-3.4-bin.zip
```

### Setup for fastrtps
* To set ENV variables for fastrtpsgen and FASTRTPSHOME:

```
	$ cd ~/Fast-RTPS
	$ echo "export FASTRTPSHOME=${PWD}" >> ~/.bashrc
	$ echo "export PATH=$PATH:${PWD}/fastrtpsgen/scripts" >> ~/.bashrc
	$ source ~/.bashrc
	$ mkdir build && cd build
	$ cmake -DTHIRDPARTY=ON ..
	$ make
	$ sudo su
	$ make install
```


* Fastrtpsgen

```
	$ cd Fast-RTPS/fastrtpsgen
	$ gradle build          // Root        
```

* Include path 

```
	$ set(fastcdr_DIR "$ENV{FASTRTPSHOME}/build/external/install/lib/fastcdr/cmake")
	$ set(fastrtps_DIR "$ENV{FASTRTPSHOME}/build/external/install/lib/fastrtps/cmake")  
```



