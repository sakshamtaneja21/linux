# DAY2
## Notes ~ :
  1. Kernel is the core of an OS and all hardware issues are related to it.
  2. Every OS either uses Voice/Text(CLI{Command Line Interface})/GUI all runs some code to do some specific task
  3. gedit stands for graphical editor
  4. Only a root user is always validated for his action such as delete before completing the task because he has authority to edit any work by any user.
  5. All configuring files of OS are stored in etc folder(extra configuration)
  6. sh (its a shell) - > developed in 1993   bash(default shell) - > developed in 2000
  7. By default redhat shows 1000 history commands
  8. History of different terminals is merged as soon as they are closed
  9. shell features can be changed or altered permanently by editing the .bashrc file
  10. Various Installers are ~ :
    Microsoft(MSI) ; Redhat(YUM{RHEL<8} / DNF{RHEL 8}) ; Python(pip) ; Go(fmt) ; Ruby(gem)
  11. gpgcheck=0 it means not to ask for a license to complete task
  12. Python can be used by - > *Interpreter - bash
                               *IDE
                               *File
  13. Deadcode Elimination - > segment of code removed from a code that is not being used  
  14. #!  it is called she bang or hash bang
  15. while writing python code first line should be
      #!/usr/bin/python3
  16. Best python documentation at docs.python.org
  17. when we run python file, its extension does not matter as long as python is written in front.
## LINUX Commands ~ :
  * $ uname                                 #name of the kernel used in OS
  * $ uname -r                              # version of the currently used kernel
  * $ strace date                           # S stand for system, it shows the background functioning of command (system call)
  * $ shell-name                            # it changes the shell currently being used, and to close just type exit
  * $ cat                                   # it is file viewer
  * $ uptime                                # Details about time since when last logined
  * $ !history-number                       # history-number represents the sequence number of command in history and it runs the command again
  * $ !starting-text-of-command(bottom-up approach) #same as above
  * $ echo vaiable-name                     # if variable is not existing , it gives blank without error
  * $ echo $ SHELL                          # predefined variable to show shell name
  * $ echo $ USER                           # predefined variable to show logged in user
  * $ echo $ LANG                           # shows default system language
  * $ echo $ HISTSIZE                       # no of history commands that can be saved
  * $ echo $ HISTFILE                       # storage location of history file
  * $ PSI="Pykid : -- > "                   # inside " " anything can be written and it will be seen as written in terminal left side
  * $ env                                   # shows all primitive/predefined commands
  * $ alias variable-name='command'         # used to create alias / alternative of any command
  * $ source path-of-file                   # it merges any new changes made outside of terminal
  * $ tput bold                             # change text inside Terminal to bold
  * $ tput setab 3                          # changes background color of terminal
  * $ script -t 2>script-name.txt           # stores all actions performed in a script file
  * $ scriptreplay script-name              # replays all commands made on terminal
  * $ which  and $ whereis                  # shows tthe stored path for any software or file
## SHELL
  1. Actual task/work is performed over hardware of any system.
  2. System Call - > communication of command line(Terminal) with the hardware.
  3. [App/Software] - > [SHELL](converts human to machine language and vice versa) - > [kernel](brain of OS,tells how to do) - > [Hardware]
  4. Shell is like nerve cells for transmitting information where as Kernel is the brain to process and Hardware is body part to perform the instruction.
    [Command] < -- > [SHELL] - > [Hard Disk]            (result send to SHELL)  
                       ^               |                        ^
                    (Not Found)-- (condition) -- (Found) - > [Kernel] - > [Hard Disk]
                    
                         **SYSTEM CALL ARCHITECTURE**
## Make Function in Terminal ~ :
  $function-name()
  > {
    command1
    command2
    firefox www.google.com                #it opens google in firefox
    }
    run function by calling name
    
## SHELL Scripting ~ :
  1. Save file with .sh extension
  2. always initiate a file by " #!/bin/bash "
  3. use ./file-name to run any file
  4. Commands ~ :
      * read variable-name               #read used to take input and store in variable
      * echo "string"/$ variable-name    # used to print something on terminal
      * $ (( command )) or  c = $(expr $a + $b) and use \* for multiplication
      * if [ condition ] folled then and by fi
  5. Operators ~ :
    * -eq - > equal
    * -ne - > not equal
    * -lt - > less then
    * -le - > less then equal to
    
## To Delay Code in Python ~ :
  import time
  time.sleep(No of seconds)           #apply code at part where you want to bring delay
  
## To check if a certain command is right or not ~ :
  1. run any command
  2. run echo $?
     if output is 0 (command is correct) else not
    
  
## TASK ~ :
  1. Find the date and time of a command from history list as to when it was used
     { set a variable HISTTIMEFORMAT = "%d/%m/%y %T ", save in .bashrc for permanent }
  2. Change/Update history manually at path(/home/adhoc/.bash_history) and show in terminal without logout/reboot
     { update history and just close the terminal, on reopening terminal changed history will be seen }
  3. What does 2> mean?
  4. Study/Read about Vulture and Firefly
  5. Read/Explore OSI Model 6
     { https://en.m.wikipedia.org/wiki/Presentation_layer }
  6. Install VLC player on windows using Python
  7. Find various use-cases or tuple
     { 
       * Tuples are used to group together related data, such as a person’s name, their age, and their gender.
       * immutable objects can allow substantial optimization
       * Tuples can potentially be used as keys
       * Tuples can be used to store longitude and latitude coordinates
     }
