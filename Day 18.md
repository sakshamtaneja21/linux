# DAY 21

## NFS
 ### Server
  * for ubuntu ( sudo apt-get install kernel-nfs-server)
  * for rhel ( sudo yum install nfs-utils )
  * Create a directory to use as nfs ( mkdir /shareable-directory)
  * ``` vi /etc/exports```
    directory-path ip-to-allow-to-connect(rw or ro,no_root_squash)
  * ```exportfs -r``` # it makes all files shareable on server, basically reloads the exports file
  * ```chmod 757 directory-path```
  * showmount -e ip-of-server ( All traffic should be open )
 ### Client
  * showmount -e server-ip
  * mount server-ip:directory-path directory-path-to-mount-on
  * entry in fstab
    ```
    source-ip:directory-path where-to-mount nfs _netdev 0 0
    ```
## Ansible
  * Install Ansible by
  ```
  yum install ansible.noarch -y
  ```
  or
  ```
  pip install ansible
  ```
  * In background , ansible uses SSH protocol (open ssh server) to connect and work over each system thus every system must have ssh installed and configured
  * In hosts file of ansible that is ```/etc/ansible/hosts``` we can use normal public IP address or public DNS to connect with hosts
  * To work from a user while not using the default configuring files,
    1. Copy the ansible configuration file ```/etc/ansible/ansible.conf``` to users home directory
    2. Create a hosts file to enter the entry of targets ip-address
  * To disable the ssh host key checkup , open the config file and set ```host_key_checking = False```
  * To create a file using ansible
  ```
  ansible localhost -m file -a "path=directory-path state=directory mode=0755"
  ```
  * to learn about any ansible module
  ```
  ansible-doc module-name
  ```
  * to see what happens in background while using ansible use
  ```
  ansible adhoc-command -vvv
  ```
