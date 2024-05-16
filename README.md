# Docker FlightGear
This repository provides instructions on how to run on your local machine FlightGear without having to install everything FlightGear-related into your machine and even play with it through a docker container using your local host GPU. This project was developed by myself for my own use and was also requested by many members of the community for many years.

## How to set FG
Under the link , you can find an Ubuntu 20.04.6 LTS Focal docker image with FlightGear installed on it. To get started, follow the instructions here below:

1. install docker on your local machine
  
3. pull the docker image with the following input:
´´´docker pull mdeliso97/docker_fg´´´

4. check whether the image was pulled successfully:
´´´docker images´´´
If you find the docker image listed, it means that you pulled the image correctly.

5. ´´´xhost +´´´

6. ´´´docker run -it -e DISPLAY -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" docker_fg:16-05-24 fgfs --launcher´´´
