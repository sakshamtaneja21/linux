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

