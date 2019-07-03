# Network as a Service (NAAS)

* VPC
* Route 53 

Required content we should know before working for NAAS
* IP Address
* NetMask
* Subnet 
* Gateway
* DNS
* Router
* Switch
* DHCP
* Firewall
* NAT
* Routing Table

##IP address = 192.168.10.101
192.168.10 = network address 
.101= host ip

* Network address and netmask should be same to in connect
 with any device  wired or wireless.

##Netmask : how to find netmask 

ip address = __ . __ . __ .__
there are four parts in ip address
so we find netmask through part 1 of IP address  
netmask=
1. part 1 range 1-127  (class A)
        netmask =255.0.0.0
2. Part 1 range 128-191  (class B)
        Netmask =255.255.0.0
3. part 1 range 192-223   (class C)  
        Netmask =255.255.255.0

## SubNet
192.168.10.0 
Part 4 - 1byte = 8 bit = 2power(8)=0-255 =256 ip 

so we can create 2 or more network from a single ip we divide
 part 4 

network 1 =192.168.10.0 to 192.168.10.126

network 2 =192.168.10.127 to 192.168.10.255

## Subnet
if netmask = 255.255.255.0 
we can directly write netmask with if ip l 192.168.10.194/24 
so 24 is netmask and called prifix length
* if netmask is 255.255.255.0
 subnet = ip/24
* if netmask is 255.255.0.0
 subnet = ip/16
* if netmask is 255.0.0.0
 subnet = ip/8  

## Gateway
To go outside your network to connect with other ip address 
like google we like to connect then the path we need to
 connect with it 

## router 
help to connect two different IP address device 

## Switch 
Help to connect many devices in same network. switch is
 advance version of Bridge 

## DNS
Definition of: DNS. DNS. (Domain Name System) The Internet's
system for converting alphabetic names into numeric IP
addresses. For example, when a Web address (URL) is typed
into a browser, DNS servers return the IP address of the
Web server associated with that name.

1. if we have 1000 device and have to give unique ip address
 to individual device  where dhcp do this work.

## DHCP 

2. The __Dynamic Host Configuration Protocol__ (DHCP) is a
network management protocol used on UDP/IP networks whereby
a DHCP server dynamically assigns an IP address and other
network configuration parameters to each device on a
network so they can communicate with other IP networks.

## Firewall
In computing, a firewall is software or firmware that
 enforces a set of rules about what data packets will be
allowed to enter or leave a network. Firewalls are 
incorporated into a wide variety of networked devices to
filter traffic and lower the risk that malicious packets 
traveling over the public internet can impact the security 
of a private network. Firewalls may also be purchased as 
stand-alone software applications.


## NAT
all of us private ip converted into public ip process known as NAT.
Stands for "Network Address Translation." NAT translates the IP addresses of computers in a local network to a single IP address. This address is often used by the router that connects the computers to the Internet.

## Routing Table 
if want to go out of current network gateway is used so 
through routing table we write the path to go uut for
 selected devices 
where this is written the path is Routing table.

# VPC 
When we create a default VPC, we do the following to set it up for you:

* Create a VPC with a size /16 IPv4
 CIDR block (172.31.0.0/16). This
  provides up to 65,536 private IPv4
   addresses.

* Create a size /20 default subnet in
 each Availability Zone. This
  provides up to 4,096 addresses per
   subnet, a few of which are
    reserved for our use.

* Create an internet gateway and
 connect it to your default VPC.

* Create a default security group and 
associate it with your default VPC.

* Create a default network access
 control list (ACL) and associate it
  with your default VPC.

* Associate the default DHCP options
 set for your AWS account with your
  default VPC.

tasks 
