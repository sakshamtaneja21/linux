To: linux@linux.com ashutoshh@linux.com

From: sakshamtaneja7861@gmail.com

# Update instance
yum update -y

# LVM
yum install lvm2 -y
pvcreate /dev/xvdf
pvdisplay /dev/xvdf
#Volume Group create
vgcreate mystorage /dev/xvdf
vgdisplay mystorage

#Lvm Create
lvcreate --name mylvm1 --size 3.9G mystorage
#format partition
mkfs.xfs /dev/mystorage/mylvm1
#Mounting
mkdir /home2
mount /dev/mystorage/mylvm1 /home2
#put entry in fstab
'/dev/mystorage/mylvm1 /home2 xfs noexec'
mount -a
# Disable Selinux
nano /etc/selinux/config
'set SELINUX disabled'
# Set time zone to IST
timedatectl set-timezone Asia/Calcutta
# Install Basic Utility like netstat , wget vim , git
# netstat already installed
yum install wget vim git -y
# Reboot Successfully !!!!!!!

# Configure motd file
    * wget https://adhocnw.org/motd.txt
    * nano motd.txt
    * change Disk : 8G , Free Disk : 4G , Public IP, Private IP
    * write cat motd.txt in .bash_profile
    * source .bash_profile

# Apache
yum install httpd -y
systemctl start httpd.service
systemctl enable httpd.service

# SSL
yum install mod_ssl openssl -y
systemctl restart httpd.service
# add port 443 https in inbound of security of your instance

# PHP
yum install centos-release-scl -y
yum install rh-php70-php rh-php70-php-common rh-php70-php-cli rh-php70-php-devel rh-php70-php-gd rh-php70-php-json rh-php70-php-mbstring rh-php70-php-mysqlnd rh-php70-php-opcache rh-php70-php-zip -y
ln -s /opt/rh/httpd24/root/etc/httpd/conf.d/rh-php70-php.conf /etc/httpd/conf.d/
ln -s /opt/rh/httpd24/root/etc/httpd/conf.modules.d/15-rh-php70-php.conf /etc/httpd/conf.modules.d/
ln -s /opt/rh/httpd24/root/etc/httpd/modules/librh-php70-php7.so /etc/httpd/modules/
ln -s /opt/rh/rh-php70/root/usr/bin/php /usr/bin/php
php -v

# User Setup
useradd -b /home2 blu
mkdir /home2/blu/.ssh
ssh-keygen -N "" -f /home2/blu/.ssh/key
cat /home2/blu/.ssh/key.pub >> /home2/blu/.ssh/authorized_keys
chmod 600 /home2/blu/.ssh/authorized_keys
chown root:blu /home2/blu/.ssh -R
mkdir /home2/blu/public_html
chgrp apache /home2/blu/public_html
chown blu /home2/blu/public_html/
chmod 2771 /home2/blu/public_html/
chmod 755 /home2/blu/

#Virtual Host Configuration
vi /etc/httpd/conf.d/blu-php.conf
#<VirtualHost *:80>
#  ServerName bluboy.adhocnw.com
#  ServerAlias www.bluboy.adhocnw.com
#  ServerAdmin webmaster@bluboy.adhocnw.com
#  DocumentRoot /home2/blu/public_html

#  <Directory /home2/blu/public_html>
#      Options -Indexes +FollowSymLinks
#      AllowOverride All
#  </Directory>

#  ErrorLog /var/log/httpd/blu-adhocnw.com-error.log
#  CustomLog /var/log/httpd/blu-adhocnw.com-access.log combined
#</VirtualHost>
echo "error log file" > /var/log/httpd/blu-adhocnw.com-error.log
echo "access log file" > /var/log/httpd/blu-adhocnw.com-access.log
apachectl configtest
systemctl restart httpd

# changing DocumentRoot in ```/etc/httpd/conf/httpd.conf``` from
#  /var/www/html to /home2/blu/public_html and
#  /var/www to /home2
#  now http://ip/page_in_public_html will be shown
echo "13.235.108.24 bluboy.adhocnw.com" >> /etc/hosts

# to run DNS, on local machine
#  ( for linux )
#
# echo "13.235.108.24 bluboy.adhocnw.com" >> /etc/hosts

#  ( for windows )
#  * open file at below path
#  * C:/Windows/System32/driver/etc/hosts
#  * write
#  13.235.108.24 bluboy.adhocnw.com


# Update server packages
yum update -y
