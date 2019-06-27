# Setting up Data Node & Name Node
1.  Setting up JAVA PATH in Hadoop
echo $JAVA_HOME

copy the path of $JAVA_HOME and paste it into ```vi /home/ec2-user/hadoop2/etc/hadoop/hadoop-env.sh``` 

in  ```export JAVA_HOME``` 

```vi /home/ec2-user/hadoop2/etc/hadoop/hadoop-env.sh```
```
# The java implementation to use.
**export JAVA_HOME=/usr/java/jdk1.8.0**

# The jsvc implementation to use. Jsvc is required to run secure datanodes
```
2. Now enter the code in ```<configuration> tag``` and if you're a data node then enter  
```vi hdfs-site.xml```
```
<configuration>
<property>
<name>dfs.datanode.data.dir</name>
<value>/home/ec2-user/naman123</value>

</property>
</configuration>
```
and if you're a namenode then enter
```
<configuration>
<property>
<name>dfs.namenode.name.dir</name>
<value>/home/ec2-user/naman123</value>

</property>
</configuration>
```

```hdfs-site.xml```
```
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
<!--
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License. See accompanying LICENSE file.
-->

<!-- Put site-specific property overrides in this file. -->

<configuration>
<property>
<name>dfs.datanode.data.dir</name>
<value>/home/ec2-user/naman123</value>

</property>
</configuration>
```
3. Setting the DNS of namenode in ```core-site.xml``` in ```<value> tag```

```vi core-site.xml```
```
<configuration>
<property>
<name>fs.defaultFS</name>
<value>hdfs://ec2-34-197-238-12.compute-1.amazonaws.com:9001</value>
</property>

</configuration>
```

4. Set hostname by your Public DNS of particular instance
```
hostnamectl set-hostname ec2-13-127-76-119.ap-south-1.compute.amazonaws.com
```
5. Now enter your Private IP and your Public DNS in ```NameNode``` as it is written in ```**``` and keep writing the private IP and DNS of ```DataNode``` in ```NameNode /etc/hosts```

```sudo vi /etc/hosts```

```
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost localhost.localdomain localhost6 localhost6.localdomain6

**172.31.2.221 ec2-13-127-76-119.ap-south-1.compute.amazonaws.com**
```
6. for starting the datanode
```
hadoop-daemon.sh start datanode
```
for starting the namenode, enter command in namenode instance
```
hadoop-daemon.sh start namenode
```
7. Check with ```jps``` command
```
jps

O/P:
2384 DataNode
12546 Jps
```

# References

* http://slashbigdata.blogspot.com/2017/07/hadoop-v1-vs-hadoop-v2.html?m=1


## HDFS Cluster Setup

Hadoop PORT NO. - ```50070``` [TCP]

Data Node PORT NO. - ```50010``` [TCP]

Block Size :- Chunks where data is divided
By Default Hadoop v2 have 128MB and Hadoop v1 have 64MB and it is changeable

for checking what files are there in ```/```
```
hdfs dfs -ls /
```
```
hdfs dfs -mkdir /google
hdfs dfs -ls /
```

```
yes "hello world this is me" > data.txt
```
for uploading
```
hdfs dfs -put data.txt /google
```

# Ashu Sir Notes

```
Note:  all operation must be  performed by  user  ec2-user 
step1  :  launch  3  ec2-instances 
           1 instace - 2GB  --NN --Elastic  IP --static/fix IP --rhel7.5
           2  instance  -- 1 GB   --DN

---------------------

step 2 : install   jdk in  all the nodes and  set  java path
##########
 3  sudo   yum  install  wget  -y
    4  ls
    5  wget  http://monalisa.cern.ch/MONALISA/download/java/jdk-8-linux-x64.rpm
    6  ls
    7  sudo  rpm  -ivh   jdk-8-linux-x64.rpm 
    8  rpm  -ql  jdk
    9  vi   .bashrc 
########################

step 3 :   download and install hadoop2.7  in all the node  
=================
15  wget  http://13.234.66.67/summer19/bigdata/hadoop-2.7.3.tar.gz
   16  history 
   17  ls
   18  tar  -xvzf  hadoop-2.7.3.tar.gz 
   19  ls
   20  mv  hadoop-2.7.3  hadoop2
   21  ls
   22  vi  .bashrc 
   23  source  .bashrc  
===  cat  /home/ec2-user/.bashrc ========
JAVA_HOME=/usr/java/jdk1.8.0
HADOOP_HOME=/home/ec2-user/hadoop2
PATH=$JAVA_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH
export PATH

###################

step  4 :   setup  Namenode  first  
 28  sudo  hostnamectl  set-hostname   ec2-3-90-19-144.compute-1.amazonaws.com
   29  ifconfig 
   30  sudo  vi  /etc/hosts
   31  hostname
   32  ls
   33  cd   hadoop2/
   34  ls
   35  cd  etc/
   36  ls
   37  cd  hadoop/
   38  ls
   39  echo  $JAVA_HOME
   40  vi hadoop-env.sh 
   41  vi  hdfs-site.xml   
   42  vi   core-site.xml 
   43  hostname
   44  vi   core-site.xml 
   45  history 
   46  ls
   47  cd  /home/ec-user
   48  cd  /home/ec2-user
   49  ls
   50  hdfs  namenode -format   
   51  hadoop-daemon.sh  start  namenode
   52  jps

##############   cat   /etc/hosts ############
172.31.39.188   ec2-3-90-19-144.compute-1.amazonaws.com

Step 5:   setup   all datanode   : 
##################################################
  15  cd  hadoop2/etc/hadoop/
   16  ls
   17  echo   $JAVA_HOME
   18  vi  hadoop-env.sh 
   19  vi hdfs-site.xml 
   20  vi  core-site.xml 
   21  cd
   22  sudo  hostnamectl   set-hostname   ec2-3-86-15-93.compute-1.amazonaws.com
   23  ifconfig 
   24  jps
   25  hadoop-daemon.sh  start  datanode
#####################################################

NOte:  allow   firewall  TCP port  50070 &  9000  in  namenode  
       allow  firewall TCP port  50010  in  all datanode 

```



