# Utiliser une image de base Python 3.8
FROM python:3.8-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt dans le répertoire de travail
COPY requirements.txt .

# Installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le contenu du répertoire actuel dans le répertoire de travail du conteneur
COPY . .

# Exposer le port 5000
EXPOSE 5000

# Définir une variable d'environnement pour indiquer à Flask que nous sommes en mode production
ENV FLASK_ENV=production

# Commande pour lancer l'application Flask
CMD ["python", "app.py"]


