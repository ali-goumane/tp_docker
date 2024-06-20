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
