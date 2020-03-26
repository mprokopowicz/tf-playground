FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y install unzip
RUN apt-get -y install wget
RUN wget https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_linux_amd64.zip
RUN unzip terraform_0.11.14_linux_amd64.zip && rm terraform_0.11.14_linux_amd64.zip
RUN mv terraform /usr/local/bin/terraform
WORKDIR /code
CMD bash