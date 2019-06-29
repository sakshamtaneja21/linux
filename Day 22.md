# Day 22 HTML

## Agenda of the DAY
  * HTML v5
  * CSS V3
  * Python
  Interface - > web - > Desktop Server
  * CGI
```
scp -i key user@ip # used to copy data securely from desktop machine to server machine
```

*   HTML is designed as an alternative for Microsoft Office, because Microsoft Office is not browsable.
*   HTML is a documentation language which is used to write documentation.
*   A HTML page is accessible world wide via internet.
*   A Webpage is 100% document
*   We can create HTML pages with .htm, .html.
*   To change a page every 7 seconds
```htm
<meta http-equiv="refresh" content="7;url=http://google.com">
```
*   When we dont need to open a new page and the working will be on the same page
*   We will use iframe
## Python Backend CGI
*   To communicate Apache with Python we have a Common Gateway Interface (CGI) for this.
*   CGI is used to provide connectivity to programming language with Apache server.

## Writing our 1st CGI File
*   It is necessary to give path of the python interpreter path
```py
#!/usr/bin/python3
```
*   We need to disable Selinux before using our webpage.
```
setenforceing 0
```
*   We can permanently disable Selinux vai ```/etc/selinux/config```
*   Now we need to import ```CGI``` for our use.
*   CGITB is used to display errors on the webpage and error log. CGITB full form Common Gateway Interface Trace Back.
```py
import cgi
import cgitb
```
*   Now we need to enable cgitb
```py
cgitb.enable()
```  
*   We need to write two lines neccessarily to use python as backend
```py
print("Content-type:text/html")
print("")
```
*   To get root access in CGI we have to make ```apache``` user as sudo user.
*   To add apache as sudo user open the file in ```/etc/sudoers.d/90-cloud-init-users``` and this line in it.
```
apache ALL=(ALL) NOPASSWD:ALL
```
*   To use cgi-bin in Debian distribution like ubuntu you have to tell the apache to give access to cgi-bin.
*   As such to enable cgi-bin use the command
```
a2enmod cgi
```
*   The default cgi-bin path in ubuntu is ```/usr/lib/cgi-bin```

## Things to explore about OS
*   Windows 2016 Server
*   Redhat
*   Ubuntu
*   Open SUSE

## Using Subprocess module
*   To run a linux or windows command in python we use subprocess.
```py
import subprocess
result = subprocess.getoutput("date")
```




* Webpage is just a kind of document with format or extension of HTML
* DNS is a server that stores the ip of all servers and websites mapped with some name
* DVWA -> software which is able to hack a website and if open or installed on system then it will be able to access all files in system
* developer.mozilla.org - > website to practice with website development
## Software Requirements
  * httpd
  * empty page of a html file shows the ip of server or title.

## HTML
 * ``` <marquee> text </marquee>``` # used make text movable

 * ```<meta http-quiv="refresh" content="number-of-seconds;url=path-of-url" />``` # to open different page with user interaction after certain time

 * ```<!--  comment data -->```<!-- hello -->
 * ```<iframe src="path-of-url"> </iframe>```
 * in src , we can type the url,img,video-name of anything to play

 * to run shellinabox
 ```
 <iframe src='ip-of-server:4200' width="456" height="475"> </iframe>
 ```
 * ```<input name='' >``` # to take input from user
 * ```<form> </form>``` # to use form
 * while submitting a form, the variable collects the ip,port,mac,OS-type of the machine being used
 * HTML is a kind of document language

# Processing html data using CGI
  * while using forms, the data submitted by user is transferred to aws server by the html using http protocol and this work of communicating with the user and passing the data to backend program is reffered as front-end language
  *  CGI stands for Common Gateway Interface , it is a driver which is used to act as a gateway or communication medium between backend language and apache
  * the backend code of CGI is stored in ```/var/www/cgi-bin```
  * telnet is a service used to connect with any ip and with any protocol
    ```
    telnet ip-address port-no
    ```
  * CGI file need to be given execution permission
  * SELINUX need to be disabled
  ## To install apache in ubuntu
    ```
    sudo apt-get install apache2
    ```
    * to use cgi , make directory in /usr/lib/cgi-bin
    * run command ```a2enmod cgi``` to activate cgi
    * run command ```systemctl restart apache2``` to restart services

  ## To get root access
    * make apache a sudoer
    * move to ```/etc/sudoers.d/```
    * write this in last
    ```
    apache ALL=(ALL) NOPASSWD:ALL
    ```
    * save it with ```:wq!``` to save it at run time

  ## To learn about OS
    * practice on Windows 2016
    * practice redhat , ubuntu/debian
    * practice opensuse

* HTML is a upgraded version of MS Office but it is browsable

refresh the page after 3 seconds to the given URL; 3= no. of seconds

```
<meta http-equiv="refresh" content="3" ;url=https://www.google.com />
```
For comment in html
```
<--

-->
```
iframe tag= for inserting a page into a page, or you can put a image or a video
```
<iframe src="index.html" height="500" width="700"> 

</iframe>
```

User Input
```
<FORM>
<input type=date> </input>

<input  name="x"> # Saving a variable which is visible in URL

<input type"text" name="y" placeholder="Enter your name"> # placeholder=> inputs the text into the box

<input type="number">

<input type="radio" name="n" value="python"> python <br/>
<input type="radio" name="n" value="Go"> Go    <br/>
<input type="radio" name="n" value="Java"> Java  <br/>
# value attribute sends the value of selected button to the backend data

<input type="checkbox" name="a"> ML <br/>
<input type="checkbox" name="b"> CLOUD <br/>
<input type="checkbox" name="c"> AI <br/>
# For selecting multiple options using checkboxes

<textarea   name="s" cols="50" rows="15">
Type Here
</textarea>
# name has the variable "s" which includes the value of the box; cols and rows defines the size of box in terms of rows and columns


<input  type="submit"
>


</FORM>
```
CGI = Common Gateway Interface => Its is driver  user for integrating(communication) between backend(Python, JAVA) and Apache Server



Remove the color of the terminal output
```
unalias ls
```

Making backend:-

```/var/www/cgi-bin```

```cmd.cgi```
```
#!/usr/bin/python3

import cgi
import cgitb
# to show common error in webbrowser
cgitb.enable()

print("Content-type:text/html")
print("")

webdata=cgi.FieldStorage() # this will collect all the html code with data

# Now extracting value of x
data=webdata.getvalue('x')

# Sending output to client via web server
print(data)

```
```
chmod +x cmd.cgi
```
* **Always set selinux to disabled for CGI**

setting up the html file for CGI
```
<FORM action="/cgi-bin/cmd.cgi">

</FORM>
```
```For seeing the error```
```
tailf /var/log/httpd/error_log
```

For inserting the command of terminal in text box [insert code in same file as previous]
```
import subprocess

output=subprocess.getoutput(data)
print(output)
```

for inserting any output into a HTML tag
```
import subprocess

output=subprocess.getoutput(data)
print("<h1>")
print(output)
print("</h1>")
```

for not showing the data of variable in URL
```
<Form method="POST">

</form>
```


```pre``` tag shows the original format of command output
```
print("<pre>")
print(output)
print("</pre>")
```

For executing sudo commands with CGI:-

```cd /etc/sudoers.d/```

```vi 90-cloud-init-users```

add this command in file for making apache a sudo user
```
apache ALL=(ALL) NOPASSWD:ALL
```

For installing apache in UBUNTU
```
apt-get install apache2
```
activate CGI for UBUNTU only
```
a2enmod cgi
```

## Tasks
*   Why we cannot open google.com in iframe
*   And how we can do this the same for our page
*   Use the iframe to drag and drop the iframe
*   The iframe should allow to resize the window

## RHEL Setup
*   Add these to your yum.repos.d/adhoc.repo
```
[adhoc]
baseurl=http://13.234.66.67/summer19/kubernetes
gpgcheck=0

[python]
baseurl=http://13.234.66.67/summer19/python3
gpgcheck=0

[ansible]
baseurl=http://13.234.66.67/summer19/ansible27
gpgcheck=0

[rhel]
baseurl=http://13.234.66.67/summer19/rhel75
gpgcheck=0
```
*   Install these using yum
```
yum install python3* -y
yum install docker* -y
yum install ansible -y
yum install httpd -y
```
