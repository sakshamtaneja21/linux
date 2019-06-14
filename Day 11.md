# DAY 11

## Notes ~ :
  * systemctl is a command not supported in docker-containers
  * all the processes are present in systemd command which is the parent process for all
  * To run different containers directly through public ip , provide each conatiner with different port no so that each user can be fowarded based on combination ip and port to respected containers
  * .png format is not supported in ubuntu, it supports .svg
  * Network Web injection


## Linux Commands
  * $ kill -s STOP 'pidof firefox'  # used to send a process of firefoox in pause state
  * $ kill -s CONT 'pidof firefox' # it will resume the state of firefoox
  * $ docker run -itd docker-image process -name # d - > dettach, run the container but user doesn't login to container instead container moves to background
  * $ docker stop container-id # to stop a running containers




## Create a Docker Image
  * to do so we use Docker File
  * change a pre-existing image and save it with new name
  * create a empty directory
  * place evrything you wish in your new image in that directory
  * Create a file with name Dockerfile
  ```
  FROM - > checks for file in local system and if not present pull from DOCKER HUB

  RUN - > run a specific command you wish to run after entering the container

  COPY - > copy the files present in the directory to the image of docker being created

  EXPOSE - > Port no to activate in docker image being created

  ENTRYPOINT - > Which process to initiate by default for any new Image, it can not be replaced

  CMD - >Which process to initiate by default for any new Image, it can be replaced
  ```
  * run command to create docker Image
  ```
  $ docker build -t "image-name" directory-name

  ```
  * launch a container with port forwarding , run Command
  ```
  $ docker run -itd --name docker-container-name -p xxxx:80 docker-image-name

  ```

   -p stands for Port and xxxx is port no added to inbound in security

##  Industry 4.0
  * Devops
  * BlockChain
  * AI/DS
## DevOps
  * Developer + Operations
  * it has
    1. Automation
    2. CI/CD
    3. Container
    4. MicroServices

    ### Automation
    * IAC (C language) uses CFengine
    * IAC ( ruby 2005) - pupper
    ( automates everything )
    * IAC ( ruby 2007 ) - chef
    * Python ( 2010 ) - saltstack
    * Python ( 2012 ) - Ansible, JuJu, Terraform
