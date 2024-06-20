#!/bin/bash

# Installer Docker
sudo apt-get update
sudo apt-get install -y docker.io

# Ajouter l'utilisateur courant au groupe Docker
sudo usermod -aG docker $USER

# Démarrer Docker
sudo systemctl start docker
sudo systemctl enable docker


# Afficher en vert le message "Docker installé"
clear
echo "\e[32mDocker installé, Test avec docker run hello-world\e[0m"
# Exécuter un conteneur Docker simple
docker run hello-world


# créer un docker file dans le dossier back pour le back en python

touch back/Dockerfile

