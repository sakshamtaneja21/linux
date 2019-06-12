# DAY3

### Why to work on open source projects
If you have some idea which you want to build and many times you dont have much resources to do this alone then you can go with open source.

### Why people join your project?
People will join because they want to contribute in the project because by this there name will be added in that project

### GSOC (Google Summer of Code)

### To check system information
```
cat /etc/os-release
PRETTY_NAME="Kali GNU/Linux Rolling"
NAME="Kali GNU/Linux"
ID=kali
VERSION="2019.1"
VERSION_ID="2019.1"
ID_LIKE=debian
ANSI_COLOR="1;31"
HOME_URL="https://www.kali.org/"
SUPPORT_URL="https://forums.kali.org/"
BUG_REPORT_URL="https://bugs.kali.org/"
```
## Notes ~ :
  1. OS version of system is stored in /etc/os-release
  2. [Command] - - > [SHELL] - - >(checks) - - > [PATH] - - > (interpretes) - - > [Kernel] - - > [ HDD ] 
  3. Upon completion of all processes an exit code is created which defines that the command or program completed successfully
      ( if successfull - > exit code == 0 and if not successfull - > exit code != 0 )
  4. Python uses 'sh' shell for interpretation
  5. 'grep' stands for General Regular Expression
  6. Pipeline ( Pipe ) - - > Symbol '|' - - > Syntax { command1 | command2) - - > output of command1 is input to command2
  7. SCM - > Source Code Management - > differentiate programs with respect to code
  8. VCS - > Version Control System - > differentiate programs with respect to their versions
  9. Technologies using SCM are ~ : 
    * SVN
    * Git / GITHUB  { Git works on system level && GITHUB works on server side }
    * Bit Bucket
  10. what is cloning?- > downloading a repository from github
  11. Archive - > an unordered collection of data(files in a folder) - > no effect on size 
  12. Compression - > an ordered/compact collection of data - > size reduces
  
## LINUX Commands ~ :
  * $ echo $PATH                                   # gives the path of various directories where primitive commands are stored
    (Director1 : Directory2 : DirectoryN)
  * $ wc -l file-name.extension                    # count no. of line in file
  * $ wc -w file-name.extension                    # count no. of words in file
  * $ wc -c file-name.extension                    # count no. of characters in file
  * $ grep search-text where-to-search             # finds the text with similar pattern
  * $ grep -i search-text where-to-search          # finds the text (Non-Case Sensitive)
  * $ grep -w search-text where-to-search          # find the text with exact word
  * $ grep -v search-text where-to-search          # find the text that doesn't match the search-text
  * $ head -n file-name                            # extracts n lines from top of file
  * $ tail -n file-name                            # extracts n lines from bottom of file
  * $ `command`file-name.txt                       # back quotes make command work if no space is given
  * $ tar -cvf new-file.tar file-name.extension    # c - create ; v - visual ; f - forcefully , creates a archive
  * $ ls -lh                                       # shows file size in respective formats (kb/mb/gb)
  * $ ls -l                                        # shows file info ( size, permissions, name) , size in kb
  * $ tar -tvf new-file.tar file-name.extension    # shows the files present in archive
  * $ tar -xvf new-file.tar                        # extracts all files out of tar/archive
  * $ tar -czvf new.tar.gz file1.ext file2.ext     # z- gzip , it commpreses the large files into size of Kbs
## Make your own Command ~ :
  write your code and save it in /usr/bin
  example - - : vim /usr/bin/pykid
  
## Input/Output Redirection ~ :
  ### Output Redirection ~ :
    Redirection the output of a task/command to - - > * File
                                                      * RAM
                                                      * E-Mail
                                                      * Printer
                                                      * Another System
                                                      * Whatsapp
    #### File Redirection ~ :
      * $ command > file-name.extension       # overwrite, stores output of command in file
      * $ command >> file-name.extension      # append data, stores output of command in file
      * $ command 2> file-name.extension      # overwrite, stores output(error command) if an incorrect command is written
      * $ command 2>> file-name.extension     # append data, stores output(error command) if an incorrect command is written
          ('2>' it will run the command and show output on terminal if command is correct and nothing will be saved in file )
      * $ command &> file-name.extension      # sends the output of command either command is correct or not
    
    #### RAM Redirection ~ :
      * Based on Pipeline
      
    #### E-mail Redirection ~ :
      * $ mail -s 'subject-for-mail' mail-id-of-receiver
        Conditions for mail to be sent through this method are ~ : 
          1. Need a Public IP  - - > its a unique and purchased IP taken from ISP
          2. IP should be white-listed - - > any IP which visits porn sites or non-certified,dangerous sites is made non-white-              listed
          
    #### System to System Redirection ~ :
      1. type the following command in receiver system            # Host System
        $ nc -l xxxx                  # nc stand for network connector and xxxx can have value from 0000 to 9999
      2. type the following command in sender system              # Sub Systems
        $ nc IP-of-Host-System xxxx   # xxxx have value set by host-system
        
## Important Python Modules ~ :
  1. Commands -- > used only in Python 2
  2. os 
  3. webbrowser
  4. subprocess
  
  ### Redhat system information
```
cat /etc/os-release

```
This is similar to fedora distribution

### To get value of Path
Path is the collection of folders where different commands are stored.
```
echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/mnt/c/Program Files/WindowsApps/KaliLinux.54290C8133FEE_1.1.9.0_x64__ey8k8hqnwqnmg:/mnt/c/Windows/System32:/mnt/c/Windows:/mnt/c/Windows/System32/wbem:/mnt/c/Windows/System32/WindowsPowerShell/v1.0:/mnt/c/Program Files/Java/jdk-11.0.2/bin:/mnt/c/Program Files/nodejs:/mnt/c/ProgramData/chocolatey/bin:/mnt/c/Program Files/Git/cmd:/mnt/c/Windows/System32/OpenSSH:/mnt/c/Users/DrVirus/AppData/Local/Programs/Python/Python37-32/Scripts:/mnt/c/Users/DrVirus/AppData/Local/Programs/Python/Python37-32:/mnt/c/Users/DrVirus/AppData/Local/Microsoft/WindowsApps:/mnt/c/Users/DrVirus/AppData/Roaming/npm:/mnt/c/Users/DrVirus/AppData/Local/Programs/Microsoft VS Code/bin:/mnt/d/flutter/bin:/mnt/c/Users/DrVirus/AppData/Local/Android/Sdk/tools:/mnt/c/Users/DrVirus/AppData/Local/Android/Sdk/platform-tools
```
### To check what is the path of a command
To  get the value we use a command ```which``` for getting path of a command.
```
which python

```
### Input output devices
Input devices are the devices where we can give input to the computer in any form by touch, click, key press etc

Output devices are the devices where we get the output by the system in any form to the user understandable format.

**FLAG: Important topic of RedHat exam**<br>
**```Output Redirection```** means changing the output location from the actual place to somewhere else. Now we will redirect output to.
file, email, printer, whatsapp etc..

### to save a data in a file by console
Use ```>``` sign and file name to save the data in a new or existing file.
```
date > ok.txt
```
When we use ```>``` this sign this will overrite the file.<br>
To create a file without using any other command<br>
```
>ok.txt
```
this will create a new file with empty text
### To Send Output of a program in a file
For example we have a python file of
```python
print("Hello World")
```
and we want to save its output we use
```
python a.py > hello.txt
```
### Use ```>>``` for appending text in file
This symbol ```>>``` will add a new line without deleting the previous output in the file.
```
date > a.txt
cat >> a.txt
```
now calender will be appended in the previous file without overiting it.
### If we have used wrong command and used this operator.
In this case this will overite the file with null, basically empty file again

### To save the error log or error output in file
Use ```2``` and the ```> >>``` symbol to save the error log. By using ```2``` here will save the output as well as error both.

### To check that the output bash have given output or error
Here we use exit code every program used a exit code process which remembers the exit code of the program
```
echo $?
```
Run this line after running your previous testing command and if it returns ```0``` then there is no error and if it will return a non-zero value then it is different.

### To get the exit code in a file we use ```&```
To check that the program gives an error exit code and we can save this using ```&>``` or ```&>>```. <br><br>
**Python uses sh: shell for the processing**<br>
**Storing and reading data from hard disk is the most slow process of the entire Operating system process**
### To count lines words and characters in shell language
```
wc -l hello.txt
wc -w hello.txt
wc -c hello.txt
```
### To get the line where the text is stored
**General regular expression pattern**
```
grep 'hello' file.txt
hello world
hello world this
hellovsv world this
hvkvv hello world this
```
To get the non case sensitive output we will use ```-i``` argument with grep
```
grep -i hello file.txt
hello world
hello world this
HELLO WOrld this
HeLLo world this
hellovsv world this
hvkvv hello world this
```
To get the word where hello is only specific seperate word not joined ```-w```.
```
grep -w hello file.txt
hello world
hello world this
hvkvv hello world this
```
You can use multiple arguments also like ```-i``` and ```-w``` to find a word.
```
grep -iw hello file.txt
```
To get non match lines we use ```-v``` in grep as argument.
### To execute two commands in single line we use ```|``` pipe
to count no of lines, word, characters without saving in storage.
```
cal | wc -l
```
### Press Ctrl+D to get word, line, character output from wc directly by pressing this combination
```
bash$ wc
akshuysv
jjnvk
 vdf
vdnl
$ctrl+d 
    3   5  40
```
### Pipe examples
```
cal | grep 1
cal | grep 1 | grep -i june
cal | grep 1 | grep -i june | wc -w
```
### ```head``` and ```tail``` command
To get top n no of lines we use head.<br>
To get bottom n no of lines we use tail.
```
cal | head -3
cal | tail -3
cal | head -4 | tail -1
```
### To send mail from terminal
There is a command called ```mail``` explore  
dns watch

### Version Control System
The system which maintain your souce code everyday everytime for different versions.
<br>Source Code Management is the technology which remembers the code day wise date wise everyday.
### We can assign a comment to a variable also
```python
option = '''
Hey My name is Akshay Bengani
This is Day3 
'''
print(option)
```
**To use a command in shell as a text use back quotes [``` ` ```].**
## Some python liberaries 
```Commands``` is a liberary which allows me to access system commands, note this is not available in python3.<br>
```subprocess``` is a liberary which allows me to access system commands and processes in python.<br>
```OS``` is a liberary which allows me to access OS functionality.
```python
import subprocess
dir(subprocess)
subprocess.getoutput('gedit')
```
### Google Search URL
https://www.google.com/search?q=hello This URL can be used to search a string. on goofle by python using subprocess by firefox.

### Web Browser module in Python
This liberary ```webbrowser``` will provide you functionality to access system web browsers.
```python
import webbrowser
dir(webbrowser)
data = input("Enter your search term")
webbrowser.open_new_tab('https://www.google.com/search?q='+data)
```
### To create a file with same text repeatedly until you stop it
Here we use ```yes``` command to do this.
```
yes My name is Akshay Bengani
My name is Akshay Bengani
My name is Akshay Bengani
..
```
### Tar and compression
To compress a file we use tar in linux
```
tar -fcv tarfilename.tar file1.txt file2.txt filen.txt
```
```-f``` Forcefully<br>
```-c``` Create Tar<br>
```-v``` Verbose the operation <br>
```
tar -czvf tarfilname.tar.gz file1.txt file2.txt fil3.txt
```
```-z``` This is for compression
```.gz``` This is the compression format


  
## TASKS
  1. Run application from terminal but it should not run from icon(GUI)
    { alter the name of code-file in /usr/bin (firefox to firefoxs) and set alias in bashrc for firefox to firefoxs 
        (alias firefox='firefoxs') }
  2. How to Write Hello World in a Directory.
    { impossible, as a directory has no storage/memory of itself }
  3. Read about RAM
    { main memory,temporary, 2 types - SRAM nd DRAM, only data being used is stored }
  4. Find no. of lines in a file
    { file-handling in python, code saved in repo }
  5. Count no. of lines in a file without saving the file
    { input in terminal is saved in RAM, done, code i repo }
  6. open a browser-tab using python, find top 5 URLs and store them in list then open those 5 URLs and store top 5 in list         again
  7. Redirect message from terminal to whatsapp
  
