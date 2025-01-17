#не обязательно создавать контейнер через дженкинс
#создаем его заранее и пушим в хаб репозиторий
#дженкинс потом будет его вытягивать и собирать на нем нужное жава приложение
FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

#Update Repos
RUN apt-get update

#Install required tools & packages for Build Environment
#Install Git
RUN apt-get install git -y

#Install AdoptOpenJDK
RUN apt-get install default-jdk -y

#Install Maven
RUN apt-get install maven -y

#Install Docker
RUN apt-get install docker.io -y

# Clear cache
RUN apt-get clean