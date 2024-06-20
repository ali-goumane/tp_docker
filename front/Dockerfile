# Compilez l'application Vue.js avec Yarn. Commandes à exécuter :
# ○yarn install
# ○yarn build
# ●Le code compilé se trouve dans le répertoire /app/dist.
# ●Créez une image Docker basée sur NGINX pour servir l'application.
# ●Copiez le code compilé dans /usr/share/nginx/html/ du conteneur.
# ●Copiez nginx.conf dans /etc/nginx/conf.d/default.conf du conteneur.
# ●Exposez le port 80.

# Compilation de l'application Vue.js (dossier actuel) avec yarn dans le répertoire /app/dist
FROM node:16.3.0-alpine as build-stage
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn build

# Création de l'image Docker basée sur NGINX
FROM nginx:1.21.0-alpine
COPY --from=build-stage /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
