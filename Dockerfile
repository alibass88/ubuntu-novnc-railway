FROM dorowu/ubuntu-desktop-lxde-vnc:focal

# L'image de base dorowu utilise nginx sur le port 80.
# Railway fournit un port dynamique via la variable d'environnement PORT.
# Nous devons modifier la configuration de nginx au démarrage pour utiliser ce port.

# On installe 'gettext-base' pour avoir 'envsubst' si besoin, mais ici on va utiliser sed.
RUN apt-get update && apt-get install -y gettext-base && rm -rf /var/lib/apt/lists/*

# Script de démarrage personnalisé pour injecter le port Railway dans Nginx
RUN echo '#!/bin/bash\n\
if [ -n "$PORT" ]; then\n\
  echo "Setting Nginx to listen on port $PORT"\n\
  sed -i "s/listen 80 default_server;/listen $PORT default_server;/g" /etc/nginx/sites-enabled/default\n\
fi\n\
exec /startup.sh' > /entrypoint.sh && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
