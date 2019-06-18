# Day 12 
*   Edit the file
```
/etc/selinux/config
```
*   and write ```disable``` in that
*   Awk is used to print column of a file
*   sed is used to replace the keyword

# Ansible
* Ansible will connect windows using WinRM protocol.
*   To connect docker we have docker API written in GO
*   To connect network devices we will use SSH
*   To Connect Cloud we use API
*   To connect Linux we use SSH
*   I have two machines both are on AWS.
*   To install Ansible use the command
```
yum install ansible
```
*   In which machine we install ansible a file created called inventory file in ```/etc/ansible/hosts```
*   We have to define IP address of the host

## Steps for Ansible
1.  Pick two machines
2.  Install Ansible in Machine 1
3.  Assign password to ```ec2-user``` in OS2
```
passwd ec2-user
```
4.  Change in OS2 /etc/ssh/sshd_config to accept Password in OS2
```
Line 65:    PASSWORD_AUTHENTICATION = YES
```
5.  Restart the sshd service
```
systemctl restart sshd
```
6.  Add IP address in the hosts file of ansible ```/etc/ansible/hosts```
```
[a]
13.234.48.87
```
*   Run the command this will run group ```a``` of the host file
```
ansible a -u ec2-user -m ping -k
```
*   ```-u``` is for defining the username
*   ```-m``` is used for importing a python module and here we are using ```ping```
*   ```-k``` is used for defining SSH Password

## Generating your own Keys
*   Generate keys using ```ssh-keygen```
```
ssh-copy-id ec2-user@13.234.48.87
```
*   Now enter password of the machine and the public key is sent to machine2.
*   mod-ssl is used to setup website https



## Notes ~
  * RSA is algorithm used for data encryption
  * https is made using RSA algorithm
  * RSA creates a key for security reasons ( in form of encrypted text(random data))
  * KEY is only sent once not again
  * SSL ( Secure Socket Layer) - > TLS (Transport Layer Security)
  * http - > https ( from above point)


## Ansible
  * it can automate work with :
    * Linux ( using SSH)
    * Cloud
    * Network (API) - > CISCO (networking company)
    * Docker (GO API)
    * Window (uses WINRM protocol to connect Ansible with windows)
  * while using ANSIBLE use a key not a password

  * Install Ansible on LINUX by
  add a repo in adhoc.repo
  ```
    $ yum install ansible
  ```
  * it is made using python ( a module)

  ## working with ANSIBLE
    1. connect two different instances
    2. ansible need to be installed in one OS
    3. ansible is not required in instance where we want to do somework on
    4. Assign password to ec2-user in OS 2
    5. Change /etc/ssh/sshd.config to accept password in OS2
    6. Restart sshd service
    7. open /etc/ansible
    8. open ansible's inventory file
    ```
     $ nano /etc/ansible/hosts
    ```
    7. define the ip address of second instance in this file
    at the top
    ```
    [a]
    ip-address
    ```
    8. run command

    ```
    $ ansible a -u ec2-user -m ping --k

    -m stand for module
    -k stand for password
    -u stand for user
     a is the group name where all ip can be stored
    ```

## Create a RSA key
  * RUN Following Commands
  ```
  $ ssh-keygen
  $ enter-file-name(or just enter)
  $ set password on above file( or just enter)
   retype password
  ```
  * key is made on ANSIBLE
  * priavate key is saved on OS1 and public is send to OS 2
  * to send public key
  ```
  $ ssh-copy-id OS2-username@OS2-ip
  ```
## Hacking - > UDP Message interception
* in socket programming sender ip or port are never required at both sender or receiver side
* it can be done using MITM that is 'man in the middle attack'
*
## Cryptography
* It is the encryption and decryption of data
* it is of 2 types:
  1. Symmetric   works on AES and DES
  2. Asymmetric  works on RSA,DSA,ECDSA
* Symmetric Cryptography uses single key for encryption and decryption of data
* Symmetric key can not be hacked but access to it was possible earlier
* to prevent above problem, Asymmetric Cryptography was developed
* key - pair are developed in Asymmetric cryptography , one is private key and other one is public key where each is a key for other one that is public is used to open private and private to open public
