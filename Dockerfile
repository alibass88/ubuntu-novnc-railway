FROM dorowu/ubuntu-desktop-lxde-vnc:focal

# Exposer le port 80 pour noVNC
EXPOSE 80

# Définir le répertoire de travail
WORKDIR /root
