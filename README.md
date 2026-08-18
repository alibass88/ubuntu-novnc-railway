# Ubuntu Desktop with noVNC for Railway

Ce dépôt contient la configuration nécessaire pour déployer un bureau virtuel Ubuntu 20.04 (LXDE) accessible via un navigateur web (noVNC) sur [Railway.app](https://railway.app/).

## Déploiement sur Railway

1. Créez un nouveau projet sur Railway en sélectionnant **Deploy from GitHub repo**.
2. Sélectionnez ce dépôt.
3. Railway détectera automatiquement le `Dockerfile` et lancera la construction.
4. Une fois le déploiement terminé, allez dans les paramètres du service pour générer un domaine public (**Generate Domain**).
5. Ouvrez le lien généré dans votre navigateur pour accéder à votre bureau Ubuntu.
