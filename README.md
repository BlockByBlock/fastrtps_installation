## Fast-RTPS 1.5.0

### Installation  
```bash
$ cd Fast-RTPS
$ git submodule update --init --recursive
$ mkdir build && cd build
$ cmake -DTHIRDPARTY=ON ..
$ make 
$ sudo make install

$ cd fasrtpsgen
$ sudo gradle build
```



### Installation of Dependencies

* Installation of Java

```bash
$ sudo apt-get install -y software-properties-common
$ sudo apt-get install -y python-software-properties
$ sudo add-apt-repository ppa:webupd8team/java
$ sudo apt-get update
$ sudo apt-get install -y oracle-java8-installer
```
* Installation of Libboost

```bash
$ sudo apt-get install -y cmake unzip libblkid-dev e2fslibs-dev libboost-all-dev libaudit-dev
```

* Installation of G-test 

```bash
$ sudo apt-get install -y libgtest-dev
$ cd /usr/src/gtest
$ sudo cmake .
$ sudo make
$ sudo cp libg* /usr/lib/
```


* Installation of Gradle

```bash
$ wget https://services.gradle.org/distributions/gradle-3.4-bin.zip
$ sudo unzip -d /opt/gradle gradle-3.4-bin.zip
$ export PATH=$PATH:/opt/gradle/gradle-3.4/bin
$ rm gradle-3.4-bin.zip
```



### Setup for fastrtps

* To set ENV variables for fastrtpsgen and FASTRTPSHOME:

```bash
$ cd ~/Fast-RTPS
$ echo "export FASTRTPSHOME=${PWD}" >> ~/.bashrc
$ echo "export PATH=$PATH:${PWD}/fastrtpsgen/scripts" >> ~/.bashrc
$ source ~/.bashrc
```

* Include path 

```bash
$ set(fastcdr_DIR "$ENV{FASTRTPSHOME}/build/external/install/lib/fastcdr/cmake")
$ set(fastrtps_DIR "$ENV{FASTRTPSHOME}/build/external/install/lib/fastrtps/cmake")  
```



