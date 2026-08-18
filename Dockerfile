FROM dorowu/ubuntu-desktop-lxde-vnc:focal

# Railway utilise souvent des ports dynamiques, mais l'image dorowu attend le port 80 par défaut.
# On force le port via les variables d'environnement de l'image.
ENV PORT=80
ENV WEB_CLEAN=1

# Railway nécessite parfois que le processus écoute sur 0.0.0.0
# L'image de base le fait déjà, mais on s'assure de l'exposition.
EXPOSE 80

# Commande de démarrage explicite si nécessaire
CMD ["/startup.sh"]
