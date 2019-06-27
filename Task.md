
# Tasks and Solutions
This file contains all the tasks and thier solutions given in the period of Adhoc Networks Summer Training Program 2019. Tasks are given on daily basis and they are related to Linux, AWS, Redhat, etc.

# Day 1 (03/06/2019)
Notes for Day 1 are mentioned [here](https://github.com/akshaybengani/Adhoc-Notes/blob/master/Day1.md) in detail.

## Task 1 Change the Monitor view from desktop to downloads for a particular user

*   There is a file called ```user-dirs.dirs``` in ```~/.config```
*   Edit the Desktop entry with Downloads 

## Task 2 First Command Should Always give error
*   Pending 
## Task 3 Concept of Recycle Bin why it is too fast to delete a file
*   When we delete a file it basically clears the entry of the file in inode table. Which means that the data of the file exist but it is not accessible without the inode table entry.
## Task 4 Create a 5GB file and copy it 3 Times, but take size only 1 time
*   Pending
## Task 5 What happened on Spetember 1752
*   The julian calender is 365.25 days long while the perfect Gregorian calender is precisely 365.24219 days long, which means that when the britishers adopted the gee.. calender they are 13 days ahead of the gee.. calender as such on September 03 1752 the britishers ommit 13 days from thier calender and since now we have these empty 13 days not showing in our system calender.

## Task 6 Create N number of Folders in Windows using loop 

*   We can use windows bash scripting ```for``` loop for this task

```
for /l %i in (1,1,50) do mkdir dirname%i
```

*   Here ```%i``` is the counter variable and (1,1,50) means (Starting point, Increment size, End point)

## Task 7 Check at which location of RAM a variable takes memory and how much

*    It can be verified in Task Manager of Windows and System monitor of Linux

## Task 8 Create 500 variables and check its memory with comparison to null and a value

*   To do this I have used a liberary called ```memoryprofiler``` which gives a tabular output of each variable taking how much memory.

*   To run this program install a liberary from pip

```
pip install memory-profiler
```

*   Since this program contains annotations so we need to specify it while running the program
```
$ python -m memory_profiler example.py
```

*   Finally the program

```python
@profile
def my_func():
    a = [1] * (10 ** 6)
    b = [2] * (2 * 10 ** 7)
    del b
    return a

if __name__ == '__main__':
    my_func()
```
*   For more information about memory-profiler [visit](https://pypi.org/project/memory-profiler/)
# Day 2 
Notes for Day 2 are mentioned [here](https://github.com/akshaybengani/Adhoc-Notes/blob/master/Day2.md) in detail.
## Task 9 Display history with time in linux
* Run the below command in your terminal or paste this in ```.bashrc```
```
export HISTTIMEFORMAT='%F %T %t'
```
## Task 10 Update history by file in ```.bash_history``` without reboot or logout
*   Close all the terminal instances then edit the ```.bash_history``` file and then reopen it or use source.
## Task 11 Install VLC in windows without GUI interaction
```
vlc.exe /L=1033 /S  
```
*   ```/L``` parameter is for Language Selection and English Language is taken as 1033 according to bash scripting.
*   ```/S``` is for setup parameter
*   This will install your software without opening any GUI or such.
*   For more information about installing VLC [click here](https://wiki.videolan.org/Documentation:Installing_VLC/
)
## Task 12 Find use cases of tuple in real life
*   Tuples are used for grouping data
*   Tuple assignment, Act as a return value
*   Composability of Data Structures
*   For more information [Click Here](http://openbookproject.net/thinkcs/python/english3e/tuples.html
)
# Day 3 
Notes for Day 3 are mentioned [here](https://github.com/akshaybengani/Adhoc-Notes/blob/master/Day3.md) in detail.
## Task 13 Application will not start with icons but will start with terminal
*   For completing this task we need a linux operating system with GUI.
*   So In order to this we need a package called ```alacarte``` which is freely available both in ```yum``` package manager and ```debian``` package managers.
*   You can install it by
```
yum install alacarte
apt-get install alacarte
```
*   By installing this package you will get a ```Main Menu``` named application in your application drawer.
*   Open that and choose the application you want to edit.
*   Then Double click that and edit the command path to something different.
*   This will modify the icon code by changing the actual path of the execution file.
*   Since now the application will not open from icon it will be opened by the terminal only until you fix that again.
## Task 14 How to write hello World in a directory
*   Pending
## Task 15 No of lines word characters count in python
*   To do this task you should have knowledge about file handling and string functions. If you want to learn more about these I have my personal notes [here](https://github.com/akshaybengani/Python-tutorials) check them out.
```py
filename = input("Please Enter a file name ")
myfile=open(filename)

lineCount = 0
wordCount = 0
charCount = 0
for lines in myfile:
    lineCount = lineCount + 1
    wordCount = wordCount + len(lines.split())
    charCount = charCount + len(lines)

print("No of Lines      :   ",lineCount)
print("No of Words      :   ",wordCount)
print("No of Characters :   ",charCount)
```
## Task 16 Count no of lines word character without saving data in a file
*   Run this program and this will ask user to enter input and to stop the input statement I have specified to use a word ```done``` to break the loop and give results.
*   Since this program will run on RAM there is no additional file write on hard disk or any other secondary storage.
```py
wordCount = 0
lineCount = 0
charCount = 0

print("Enter input \nType 'done' to end\n")

while True:
    line = input()
    if line=='done':
        break
    else:
        lineCount = lineCount + 1
        wordCount = wordCount + len(line.split())
        charCount = charCount + len(line)    

print("Number of lines      :   ",lineCount)
print("Number of Words      :   ",wordCount)
print("Number of Chars      :   ",charCount)
```

## Task 17 Search hello and then save top 5 URL in a list and then open top 5 url or all the search terms and then again save in a list and finally print that.

```py
from googlesearch import search
import time
web=input('Enter your search term ')

l1 = []
l2 = []
for i in search(web,stop=5):
	print(i) # i will only print the url
	time.sleep(1)
	l1.append(i)
print(l1)
for i in l1:
  for j in search(i,stop=5):
    l2.append(j)
print(l2)
```

# Day 4
Notes for Day 4 are mentioned [here](https://github.com/akshaybengani/Adhoc-Notes/blob/master/Day4.md) in detail.

## Task 18 Connect RedHat with GUI

*   Pending

# Day 5
Notes for Day 5 are mentioned [here](https://github.com/akshaybengani/Adhoc-Notes/blob/master/Day5.md) in detail.

## Task 19 Write code in python to connect to SSH without putty

*   Pending

## Task 20 How to remove read and write permission from a file or directory for root or admin user
*   Pending
## Task 21 List how many people are in a group find that list
*   To find this there is a command called ```lid``` for this.
```
lid GROUPNAME
```
*  This will list all the users connected in the group, For more information click [here](https://www.cyberciti.biz/faq/linux-list-all-members-of-a-group/)
## Task 22 How to add multiple users in a group at once
*   For this I have developed a program for performing this task
```py
# usermod -G tech username
import subprocess
usernames = input("Enter names of users seperated with commas\n")
groupname = input("Enter group name ")
nameList = usernames.split(',')

for name in nameList:
    cmdString = "usermod -G "+groupname+" "+name
    print(cmdString)
    subprocess.getoutput(cmdString)
```
*   Enter the users name seperated by commas and then enter the group name and you are done.
# Day 6
Notes for Day 6 are mentioned [here](https://github.com/akshaybengani/Adhoc-Notes/blob/master/Day6.md) in detail.

## Task 23 Copy all RAM data to Secondary Storage and use that data

*   Pending

## Task 24 Find number of users connected in your wifi networks and show thier IP and MAC

*   Pending

## Task 25 Write a code that will create 100 files and 200 directories

```py
import os
for i in range(100):
    os.system('mkdir '+str(i))
for i in range(100):
    os.system('touch '+str(i))
```

## Task 26 write a program to list number of users present in linux based os

```py
import os
num = os.system("ls /home | wc -l")
print("Number of users in system are "+num)
```

## Task 27 Take 10 commands randomally from a user and check it of it is present then run it otherwise give voice based error message

```py
import os
import pyttsx3

def speak(x):
    tts = pyttsx3.init()
    rate = tts.getProperty('rate')
    tts.setProperty('rate',rate-10)
    volume = tts.getProperty('volume')
    tts.setProperty('volume',volume-1000)
    tts.say(x)
    tts.runAndWait()
for i in range(10):    
  command = input('Enter a command: ')
  os.system('command 2> error.txt')
  if (os.system('cat error.txt')):
    speak('Command not found')
```

# Day 10
Notes for Day 10 are mentioned [here](https://github.com/akshaybengani/Adhoc-Notes/blob/master/Day10.md) in detail.

## Task 28 Build a Qr code reader in python to scan the value and print it

*	we can create architecture using

```
$ mkdir A/B/D/I/L/H  A/B/E/H/K/M  A/C/F/H/K/M  A/C/G/J/K/M
```
*	use chmod to provide permisions.

## Task 29 Study about Web-Server

* Pending

## Task 30 Make a camera working to connect with other OS

* Pending

## Task 31 Build a Qr code reader in python to scan the value and print it

*   Pending

## Task 32 Create a program that asks the user to enter their name and their age,Print out a message that will tell them the year that they will turn 95 years old.

```python
name = input("Enter your name ")
age = int(input("Enter your age "))
yearwhen99 = (2019-age)+99
print("Hi ",name," You will turn to 99 years in ",yearwhen99)
```

## Task 33 write a code using  that will take user input from and search on google and store top 10 url in the list.
### Conditions :
  1.   URL must be stored permanently as well
  2.   user can give input using keyboard and  voice both
```python
#!/usr/bin/python3
from googlesearch import search
import time
web=input('pls enter topic:')

# now time for search
list1 = []
for i in search(web,stop=10):
	print(i) # i will only print the url
	time.sleep(1)
	list1.append(i)
print(list1)
f = open('url.txt','a+')
for i in list1:
	f.write(i+'\n')
f.close()
```

## Task 34 take a list say  adhoc=[1,2,3,1,4,5,66,22,2,6,0,9],write the program that will do 
1.  print only those numbers greater than 5
2.  also print those numbers those are less than or  equals to 2  ( <= 2 ),
3.  store these answers in in two different list also
```py
adhoc=[1,2,3,1,4,5,66,22,2,6,0,9]
selno = []
for i in adhoc:
    if(i>5 or i<=2):
        print(i)
        selno.append(i)
```

## Task 35 Take all input from user . 
1.  check that all character are string, 
2.  if all char are string then create user in your linux based OS, 
3.  also create password for same user , password will, password will be  ===>>     hello{username}
```py
import os
data = input("Enter an input ")
charArray = [char for  char in data]

for i in charArray:
    if(i.isdigit()):
        print("Please make sure dont enter any digit in the names\n Please try again..")
        exit()

for i in charArray:
    os.system("sudo useradd "+i+" -p hello"+i)    
```

## Task 36 write a code  will take  input as your name and greet you with, 
1. good morning 
2. good evening 
3. goodafter noon , good night as per the current time your system :

```python
import os

time = os.popen('date +%H').readlines()
time = int(time[0])

if (time >= 6 and time <= 12):
    print("Good Morning")
elif(time > 12 and time <= 17):
    print("Good Afternoon")
elif(time > 17 and time <= 20):
    print("Good Evening")
elif (time > 20 and time <=23):
    print("Good Night")
elif (time > 0 and time < 6):
    print("Good Night")
```

## Task 37 use file handling to create a linux command  similar to cat .test at least  4 cases and options of cat command, compare the difference of cat command and post the result
```python
#!/usr/bin/python3

print('''
1. to show contents of single file
2. to show contents of multiple file
3. insert using cat
4. display line numbers in file -n
''')
option = input('Select an option: ')
if option == '1':
	file_name = input('Enter file name: ')
	fhand = open(file_name)
	print(fhand.read())
	fhand.close()
elif option == '2':
	file_name = input('Enter file names: ').split()
	for i in file_name:
		fhand = open(i)
		print(fhand.read())
		fhand.close()
elif option == '3':
	file_name = input('Enter file name: ')
	fhand = open(file_name,'a')
	text = input('Enter what you want to write: ')
	fhand.write(text)
	fhand.close()
elif option == '4':
	file_name = input('Enter file name: ')
	fhand = open(file_name)
	text = fhand.readlines()
	for i in range(1,len(text)+1):
		print(i,text[i-1])
else:
	print('command not found')
```

## Task 38 use deep analysis of file handling to create a linux command similar to touch, explore atleast 5 features of touch command
* Pending

## Task 39 write a code that will take input from a user and check that if it is a command, then execute it with following  conditions : i)  all the commands given by user either wrong or right must be store in a file, ii)   output of success command will be shown to monitor,     iii)  if the input command is repeated by user give him voice note not to do this again
```python
#!/usr/bin/python3

import os
no_repeat = []
for i in range(3):

	command = input('Enter a command: ')
	if command in no_repeat:
		os.system("echo Don't Repeat the command again | festival --tts")
	else:
		no_repeat.append(command)
		os.system(command+' 2>error.txt')
		os.system(command+' &> command.txt')
	os.system('rm -r error.txt')
```

## Task 40 write a code that will take user input untill number of character not exceeding, 500 chars.Now do the following  tasks: i)   print the number of repeated characters in descending order, ii)  print number of repeated words in descending order, iii)  if a word is repeating more than 5 times remove all those words, iv)  if a word is present only one times add the same word in that string but length must not increase more than 500 chars , you can remove any random thing for doing the same .
```python
!/usr/bin/python3

from collections import Counter

text = input('Enter some text: ')
if len(text) > 500:
	text = text[0:500]

text_dict = dict(Counter(text))
print('No of repeated characters: ')
for i in sorted(text_dict,key=text_dict.get,reverse=True):
	print(i,text_dict[i])

word_dict = {}
word_text = text.split()
for i in word_text:
	if i in word_dict:
		word_dict[i] = word_dict[i] + 1
	else:
		word_dict[i] = 1
for i in sorted(word_dict,key=word_dict.get,reverse=True):
	print(i,word_dict[i])

for i in word_dict.keys():
	if word_dict[i] >5:
		texts = text.split()
		for j in range(word_dict[i]):
			text.remove(i)
		print(text)
	if word_dict[i] == 1:
		length = len(i)
		if len(text)+length > 500:
			text = text[0:500-length]
			text = text + ' ' + i
		else:
			text = text + ' ' + i
	print(text)

```

## Task 41 Problem 10: write socket programing code in  a single system with follow options, i)  make two files one for sender and another one for receiver, ii) press 1 for sending / receiving  text messages from both the side, iii)  press 2  sending file from sender and receiving from receiver
* Pending

## Task 42 write socket programing for chatting  between two systems with following options i)  sender only can start the message, ii)  receiver can send reply only of each message, iii) limit of message character length must not be exceed 150 characters ,iv)  if more than 150 char exceeded by users then print an error message, v)   give some option to quit the chat
 ### Reciever
```python
#!/usr/bin/python2

import socket
re_ip="127.0.0.1"
re_port=4484  # 0 - 1024 -- you can check free udp port : netstat -nulp

# Creating UDP socket
#		  ip type v4	   UDP
s=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)

# fitting ip and port with UDP socket
s.bind((re_ip,re_port))
print "To Close communication reply the sender with a blank message"
while(True):

	# receiver data from sender
	data=s.recvfrom(150)
	print 'Server says: '+data[0]
	text = raw_input('Client says: ')
	if len(text) > 150:
		print("Sorry, but message length exceeded")
	else:
		s.sendto(text,data[1])
		if len(data[0]) == 0:
			s.sendto('',data[1])
			break

s.close()
```
 ### sender
```python
!/usr/bin/python2

import socket
re_ip="127.0.0.1"
re_port=4484  # 0 - 1024 -- you can check free udp port : netstat -nulp

# Creating UDP socket
#		  ip type v4	   UDP
s=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
print "To close communication send an blank message"
# Sending data to target
while(True):
	text = raw_input('Server says: ')
	if len(text) > 150:
		print("Message limit exceeded")
	else:
		s.sendto(text,(re_ip,re_port))
		data = s.recvfrom(100)
		print 'Client says: '+data[0]
		re_ip,re_port = data[1]
		if len(data[0]) == 0:
			s.sendto('',(re_ip,re_port))
			break
s.close()
```

## Task 43 write a python code to do the following-> i)  take input from user and search in google, ii)   pick the first 3 url of google search, iii)  make  QR-code of all 3 url's, iv)   Store all these qr-code in  apache web server in aws cloud, v)   share link of qrcode using aws public IP
```python
!/usr/bin/python3
from googlesearch import search
import pyqrcode
url = input('Enter text to search')
urllist = []
u = 0
for i in search(url,stop=3):
	urllist.append(i)
	print(i)

# Generate a QR
	qr = pyqrcode.create(i)
# create and save file
	qr.svg(f"qr{u}.svg",scale=2)
	print(qr.terminal())
	u = u+1
```

## Task 44 Do the following  settings in your redhat 7.5, i)  your system must not be able install a software telnet using yum, ii) your yum url have that telnet package it must not be install
  Solution
  ```
   $ sudo yum-config-manager --disable tel
  ```  
  This will permanently disable the 'tel' repo which contains the url for telnet package.


