FROM dorowu/ubuntu-desktop-lxde-vnc:focal

# Railway injecte une variable d'environnement PORT. 
# Nous devons nous assurer que Nginx écoute sur ce port précis.

RUN apt-get update && apt-get install -y sed && rm -rf /var/lib/apt/lists/*

# On utilise une commande shell pour évaluer $PORT au démarrage
CMD ["/bin/bash", "-c", "sed -i \"s/listen 80 default_server;/listen ${PORT:-80} default_server;/g\" /etc/nginx/sites-enabled/default && /startup.sh"]
