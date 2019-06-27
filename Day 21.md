# Hadoop with docker

1. 
```hdfs-site.xml```
```
<configuration>
<property>
<name>dfs.namenode.name.dir</name>
<value>/home/ec2-user/naman123</value>
</property>

<property>
<name>dfs.datanode.data.dir</name>
<value>/home/ec2-user/data123</value>
</property>
</configuration>
```
2. 
```
hdfs namenode -format
```
3. 
```
hadoop-daemon.sh start namenode
```
show the files and folders
```
hdfs dfs -ls /
```
```
hdfs dfs -mkdir /hello
```
```
yes "hello data this is hadoop v2" >data.txt
```
for showing the size
```
ls -lh data.txt
```
for showing all the commands which we can use
```
hdfs dfs
```
moving a file from local system to hdfs
```
hdfs dfs -moveFromLocal data.txt /hello
```
Downloading file from hdfs to local system
```
hdfs dfs -get /hello/data.txt
```



**NOTE:-** Data cannot be changed but can be deleted which is called ```WORM``` (Write Once Read Many)

```
hdfs dfs -ls hdfs://ec2-3-90-19-144.compute-1.amazonaws.com:9000/

O/P:-
Found 1 items
drwxr-xr-x   - ec2-user supergroup          0 2019-06-26 04:53 hdfs://ec2-3-90-19-144.compute-1.amazonaws.com:9000/hello
```
making a directory in hdfs
```
hdfs dfs -mkdir hdfs://ec2-3-90-19-144.compute-1.amazonaws.com:9000/hello
```

How to find the useful information from any hdfs by using
**Hadoop framework which is ```Map Reduce```** -> Distributed Processing Engine

### **Map Reduce**
* We call it **Distributed Processing Engine**
* It is for Hadoop v1
* It is programmable framework
* It is slower than YARN
* It is distributed
* Components are:-
    * Job Tracker -> Schedule the task(Like a namenode)
    * Task Tracker -> Does the task(Like a datanode)
* Architecture in GDrive

### **YARN**
* YARN (Yet Another Resouce Negotiator)
* It is also called Map Reduce v2
* It is for Hadoop v2
* Same as Map Reduce
* It is faster than Map Reduce
* And ```Spark``` is fater than YARN
* It is distributed
* Here components are:-
    * Resource Manager -> as in Job Tracker in MR
    * Node Manager -> as in Task Tracker in MR

In Hadoop v1, Same machine can have 2 NameNode which creates a backup of MetaData from 1st NameNode within 2 hours(by default[changeable])

```/home/ec2-user/hadoop2/etc/hadoop```
```
mv mapred-site.xml.template  mapred-site.xml
```
```vi mapred-site.xml``` in Configuration tag
```
<configuration>
<property>
<name>mapreduce.framework.name</name>
        <value>yarn</value>
</property>
</configuration>
```
```vi yarn-site.xml``` -> Using of Resource manager
```
<property>
<name>yarn.resourcemanager.resource-tracker.address</name>
<value>resource_masterip:8025</value>
</property>

<property>
<name>yarn.resourcemanager.scheduler.address</name>
<value>resource_masterip:8030</value>
</property>
 
<property>
<name>yarn.resourcemanager.address</name>
<value>resource_masterip:8032</value>
</property>
```
After Updating (Paste the Public DNS of Instance)
```
<configuration>

<!-- Site specific YARN configuration properties -->
<property>
<name>yarn.resourcemanager.resource-tracker.address</name>
<value>ec2-13-126-195-235.ap-south-1.compute.amazonaws.com:8025</value>
</property>

<property>
<name>yarn.resourcemanager.scheduler.address</name>
<value>ec2-13-126-195-235.ap-south-1.compute.amazonaws.com:8030</value>
</property>

<property>
<name>yarn.resourcemanager.address</name>
<value>ec2-13-126-195-235.ap-south-1.compute.amazonaws.com:8032</value>
</property>

</configuration>
```
Allow all the above used ports in security groups in aws
For adding the node manager in ```yarn-site.xml```. Paste this into same configuration tag
```
<property>
<name>yarn.nodemanager.aux-services</name>
<value>mapreduce_shuffle</value>
</property>
```
Starting the Resource and Node Manager
```
yarn-daemon.sh start resourcemanager
```
```
yarn-daemon.sh start nodemanager
```
Check by jps command
```
jps
```

```/home/ec2-user/hadoop2/share/hadoop/mapreduce``` -> inbuilt codes for basic work
```
yarn jar hadoop-mapreduce-examples-2.7.3.jar

O/P:-
An example program must be given as the first argument.
Valid program names are:
  aggregatewordcount: An Aggregate based map/reduce program that counts the words in the input files.
  aggregatewordhist: An Aggregate based map/reduce program that computes the histogram of the words in the input files.
  bbp: A map/reduce program that uses Bailey-Borwein-Plouffe to compute exact digits of Pi.
  dbcount: An example job that count the pageview counts from a database.  distbbp: A map/reduce program that uses a BBP-type formula to compute exact bits of Pi.
  grep: A map/reduce program that counts the matches of a regex in the input.
  join: A job that effects a join over sorted, equally partitioned datasets
  multifilewc: A job that counts words from several files.
  pentomino: A map/reduce tile laying program to find solutions to pentomino problems.
  pi: A map/reduce program that estimates Pi using a quasi-Monte Carlo method.
  randomtextwriter: A map/reduce program that writes 10GB of random textual data per node.
  randomwriter: A map/reduce program that writes 10GB of random data per node.
  secondarysort: An example defining a secondary sort to the reduce.
  sort: A map/reduce program that sorts the data written by the random writer.
  sudoku: A sudoku solver.
  teragen: Generate data for the terasort
  terasort: Run the terasort
  teravalidate: Checking results of terasort
  wordcount: A map/reduce program that counts the words in the input files.
  wordmean: A map/reduce program that counts the average length of the words in the input files.
  wordmedian: A map/reduce program that counts the median length of the words in the input files.
  wordstandarddeviation: A map/reduce program that counts the standard deviation of the length of the words in the input files.
```
```
yarn jar hadoop-mapreduce-examples-2.7.3.jar wordcount
```
For counting words in data.txt and storing it in outputtt folder
```
yarn jar hadoop-mapreduce-examples-2.7.3.jar wordcount hdfs://ec2-3-90-19-144.compute-1.amazonaws.com:9000/hello/data.txt   hdfs://ec2-3-90-19-144.compute-1.amazonaws.com:9000/outputtt
```



# References:-
* http://slashbigdata.blogspot.com/2017/07/hadoop-v1-vs-hadoop-v2.html
