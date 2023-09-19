# Utilisez une image Node.js comme base
FROM node:18

# Créez un répertoire de travail dans l'image Docker
WORKDIR /app

# Copiez le fichier package.json et le fichier package-lock.json
# (s'ils existent) dans le répertoire de travail
COPY package*.json ./

# Installez les dépendances du projet
RUN npm install

# Copiez le reste des fichiers du projet dans le répertoire de travail
COPY . .

# Exposez le port sur lequel votre application Node.js écoute
EXPOSE 3000

# Commande pour démarrer votre application Node.js
CMD ["node", "serveur.js"]