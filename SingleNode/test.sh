#!/bin/sh

versione="tomcat:1.6.1"
#ricordarsi di aggiornare il file Webserver-deployment.yaml con la versione giusta

#sudo rm -r /usr/local/"apache-tomcat-9.0.37"/webapps/WebServerTesina.war

#sudo rm -r /usr/local/"apache-tomcat-9.0.37"/webapps/ROOT/*
#sudo cp /home/bruno/Scrivania/WebServerTesina.war /usr/local/"apache-tomcat-9.0.37"/webapps/ROOT/
#cd /usr/local/"apache-tomcat-9.0.37"/webapps/ROOT
#sudo jar xvf WebServerTesina.war
#sudo rm /usr/local/"apache-tomcat-9.0.37"/webapps/ROOT/WebServerTesina.war
#cd /usr/local
docker build -t triennaltesin98/$versione .
docker login
docker push triennaltesin98/$versione
#kubectl delete deployment webserver
#kubectl apply -f /home/bruno/WebServer/Yaml_files/Webserver-deployment.yml
#minikube service webserver --url
