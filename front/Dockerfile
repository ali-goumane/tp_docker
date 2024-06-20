# Compilez l'application Vue.js avec Yarn. Commandes à exécuter :
# ○yarn install
# ○yarn build
# ●Le code compilé se trouve dans le répertoire /app/dist.
# ●Créez une image Docker basée sur NGINX pour servir l'application.
# ●Copiez le code compilé dans /usr/share/nginx/html/ du conteneur.
# ●Copiez nginx.conf dans /etc/nginx/conf.d/default.conf du conteneur.
# ●Exposez le port 80.

# Compilation de l'application Vue.js (dossier actuel)
FROM node:14 as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Création de l'image NGINX