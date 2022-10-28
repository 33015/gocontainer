FROM debian
WORKDIR go
RUN apt update 
RUN apt upgrade -y
RUN apt install openssh-server -y
RUN apt install wget -y
RUN wget https://go.dev/dl/go1.19.linux-arm64.tar.gz
RUN tar -zxvf go1.19.linux-arm64.tar.gz -C /usr/local/
RUN useradd --create-home --shell /bin/bash markus
ENV PATH "$PATH:/usr/local/go/bin"
