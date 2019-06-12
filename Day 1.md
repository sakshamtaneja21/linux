# DAY1
initiated with a video over ways of communication , ways to easily communicate and develop a network
Application/Software -> Interpreter -> Kernel -> RAM,CPU,HardDisk
(Kernel interacts with the hardwareand checks for space availability.
operating systems @Student's point of view~: 
* Windows(Closed Source)
* Linux (Open Source)--> its a kernel and not an OS
* Mac(Costly)

### To change backend code of Firefox~:
  $ gedit /usr/bin/Firefox -> Change the Code
  
### Kernal(3 types)~:
  1.NT(Windows) ~:  .exe(extension) && Examples ~ (Windows 7,8,10)
  2.LINUX -> RPM(.rpm) { used for bigdata in redhat }
             Debian(.deb) {used for ML in Ubuntu/mint}
  3.DARWIN ~ :.dmg && Examples ~ (OSX , SNOWL)
  
### Few useful Linux Commands~:
* $ mkdir folder-name{1..50}        # {} encloses a range and creates 50 folder in linux
* $ useradd user-name               # Creates a new user
* $ pinky                           # shows information of all available users
* $ rm -f                           # Forcefully remove files 
* $ rm -fv                          # forcefully remove file with an action responding work done
* $press F2                          # used to rename a file
* $ cal September 1752              # shows september calendar with dates missing from 3 to 13
* $ date +%Y                        # Current year
* $ date +%A                        # Current Weekday
* $ date +%T                        # Current Time
* $ date --help                     # all options available with date command
* $ cal -j                          # Shows Julean Calendar 
* $ bc                              # opens a calculator
* $ ls -F                           # check which is folder and which is file in a directory
* $ mkdir -p folder1/folder2        #both folders will be created together
* $ rm -rf pi*                      #deletes all folders starting with 'pi' , use anything instead of 'pi'
* $ su                              #switch users through command line

### Default Architecture of Windows~:
  Main Account ~: Admin
  Text Editor ~: Notepad
  CMD
  Internet Explorer
  .exe based OS
  OS Storage ~: C Drive
  C:\user\user-name         #Stores info about environment of seperate users(Desktop,Downloads,Videos etc..)
  
### Default Architecture of Linux(Red Hat)~:
  Main Account ~: root
  Text editor ~: Gedit
  Terminal
  Firefox
  .rpm based
  OS Storage ~: /(backslash)
  /home                     #Stores folders of different users each with seperate data
  /root  ~> Admin

### Python Integration in Various Technologies~:
  * Pi (meu)python ~> Raspberyy pi
  * Web-App ~> Django,FLask
  * All Databases
  * OS ~> Linux,Windows,Mac
  * Network --> Devices (Router,Switch,etc)
  * Bigdata
  * Cloud Computing
  * NET ~> ironpython
  *  JAVA ~> Jython
  
### To install Python 3.6 in rhel 7.5 server~ :
  * move to etc directory (using cd command)
  * move to yum.repos.d/ directory
  * create a new repo ~ > gedit adhoc.repo
  *  write~ :
    [ad]                                              #[]these brackets can enclose anything, you can write Pykid instead as well.
    baseurl=http://13.234.66.67/summer19/python3      # online repository created by adhoc networks
    gpgcheck=0
  * save it and run command
    yum install python3* -y
  * Python installed successully.
  
  
## Notes:
  * Calendar used by linux is called Georgian andd other available is Julean
  * CNCF ~ : A great open source Community
  * Python is an interpreted language.
  * Python provides reusability of memory ~ > (Stores the value and not the variable)
  * Each website we run on browser, temporarily stores all its information on local pc RAM
  *  (75~80) % of the data in the world is stored in string format.
  *  ML and  AI both uses int/float values
  
### Data-Types~ :
  1.Immutable
      * Python is strictly binded
      * examples ( int,float,str,byte,tuple)
  2.Mutable
      *examples (list,set,dictionary)
      
## TASK OF THE DAY~ :
  * show files and folders of different folders other then desktop as default on monitor
    {open \home\adhoc\.config ~ > gedit user-dirs.dirs ~ > swap Desktop with Downloads ~ > Restart}
  * First time run Command should always give some error
  * Study Concept of Recycle Bin -- how it works
    {done, keeps some memory from origin storage and tacks recycle.bin from each dir merging all}
  *  Make different copies of a >5MB file in a directory using only 5MB storage.
  *  why 3 to 13 dates are missing from september 1752 calendar?
    {To get the calendar back in sync with astronomical events like the vernal equinox or the winter solstice, 
    a number of days were dropped}
  *  Create 100 folders and delete them in Windows
    { use os module and make python code }
  *  Find the part of RAM where how much byte of data is actually stored or provided to a variable can be checked
  *  Make 500 variables and check change in size of RAM then replace variable's value with 'None' and re-check the RAM.
  
