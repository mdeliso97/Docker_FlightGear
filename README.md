# Docker FlightGear
This repository provides instructions on how to run on your local machine FlightGear without having to install everything FlightGear-related into your machine and even play with it through a docker container using your local host GPU. This project was developed by myself for my own use and was also requested by many members of the community for many years.

## How to set FG
Under the link [docker image](https://hub.docker.com/repository/docker/mdeliso97/docker_fg), you can find an Ubuntu 20.04.6 LTS Focal docker image with FlightGear installed on it. To get started, follow the instructions here below:

1. install docker on your local machine
Visit the link [docker installation](https://docs.docker.com/engine/install/#get-started) to get instructions on installing docker on your OS.
  
2. pull the docker image with the following input:

`docker pull mdeliso97/docker_fg`

3. check whether the image was pulled successfully:

`docker images`

If you find the docker image listed, it means that you pulled the image correctly.

4. enable xhost services

`xhost +`

This command disables access control, allowing any client to connect to the host (allowing the usage of local host UI to show GUI)

5. run FlightGear

`docker run -it -e DISPLAY -v "/tmp/.X11-unix:/tmp/.X11-unix:rw" docker_fg:16-05-24`

If all steps above were performed correctly, this command should launch a docker container with FlightGear directly executing on your machine.

## Credits
If you extend this Docker image for your own use or for public distribution, please provide credit to the original creator. Additionally, I welcome any suggestions for improving the Docker image. You can find the Dockerfile, which includes all the commands executed during the image build, in the repository.

Enjoy!
