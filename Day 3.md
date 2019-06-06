# DAY3
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
  
