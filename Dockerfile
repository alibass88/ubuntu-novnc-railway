FROM dorowu/ubuntu-desktop-lxde-vnc:focal

# L'image de base écoute sur le port 80.
# Nous allons utiliser railway.json pour dire à Railway de router le trafic vers ce port.
EXPOSE 80
