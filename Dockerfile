FROM ubuntu:18.04
RUN apt update
RUN apt install -y default-jre
RUN apt install -y default-jdk
RUN apt install -y git
WORKDIR /usr/local
RUN git clone https://github.com/BrunoB98/TomcatConfig.git
WORKDIR /usr/local/TomcatConfig/bin
EXPOSE 8080
CMD ["./catalina.sh", "run"]
