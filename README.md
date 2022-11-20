# dockerPSIRSFrontend
dockerPSIRSFrontend


# dockerPSIRSBackend
A compose DockerFile to run the PSIRS frontend application

## Setup
* Drop these file into the top level directory of the project
* Run  `docker image build -t myAppName .`

Followed by:

* Run  `docker run -d -p 8081:4201 myAppName`

## Note
* You can access the app via: http://localhost:8081/




## Extra Information

To clean up your images and containers:
* Run the three commands below:
*	 `docker stop $(docker ps -aq)`
*	 `docker rm $(docker ps -aq)`
*	 `docker rmi $(docker images -q)`

To have shell access to your container
* docker exec -it psirsbackend_web_1 bash -c "sudo -u devuser /bin/bash”


## Contributors
[Daser David](https://github.com/daser)
