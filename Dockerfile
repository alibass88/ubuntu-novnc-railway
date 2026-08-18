FROM dorowu/ubuntu-desktop-lxde-vnc:focal

# Installation de sed pour la manipulation de fichiers
RUN apt-get update && apt-get install -y sed && rm -rf /var/lib/apt/lists/*

# Script de démarrage personnalisé
# 1. On remplace le port 80 par le port dynamique fourni par Railway ($PORT)
# 2. On s'assure que Nginx n'écoute pas seulement sur localhost mais sur toutes les interfaces (0.0.0.0)
# 3. On lance le script de démarrage d'origine
CMD ["/bin/bash", "-c", "sed -i \"s/listen 80 default_server;/listen ${PORT:-80} default_server;/g\" /etc/nginx/sites-enabled/default && sed -i \"s/listen \[::\]:80 default_server;/listen [::]:${PORT:-80} default_server;/g\" /etc/nginx/sites-enabled/default && /startup.sh"]
