  
The "Docker-compose.yml" file is the configuration file which contains all the specifics regarding the Jenkins services
like port ,container name image name
also later we had created an centos server for which we had created sperate dockerfile which again contains the contains all the configuration of the centos server and later we have
linked it with the docker compose file whihc contains the cotainer ,image names
both the jenkins and centos server are within the same network which is made possible using :net for both the netowrk parameters


Commands

Docker pull [Image name as-in docker site ]
Docker-compose build
Docker-compose up -d/star/stop
Docker logs -f [container-name]
Docker-compose restart [container-name]
Docker exec -ti [container-name] bash
Docker cp [file] [container-name]:[file2]
Ssh-keygen -f [keyname]
