# Premier container
docker run hello-world

# récupérer une image
docker pull httpd

# container nginx
docker run -d -p 8080:80 nginx

# name the container 
docker run -d --name container_name -p 8080:80 nginx

# -d pour détacher le conteneur du processus principal de la console. (--detach)
# Il vous permet de continuer à utiliser la console pendant que votre conteneur tourne sur un autre processus

# -p pour définir l'utilisation de ports. Dans notre cas, nous lui avons demandé de transférer le trafic 
# du port 8080 vers le port 80 du conteneur. Ainsi, en vous rendant sur l'adresse  http://127.0.0.1:8080  , 
# vous aurez la page par défaut de Nginx.

# arrêter un container 
docker stop quizzical_noyce

# supprimer un container 
docker rm quizzical_noyce

# lister les images
docker images -a

# lister les containers inactifs
docker container ls -a

# nettoyer le system 
docker system prune

# l'ensemble des conteneurs Docker qui ne sont pas en status running ;
# l'ensemble des réseaux créés par Docker qui ne sont pas utilisés par au moins un conteneur ;
# l'ensemble des images Docker non utilisées ;
# l'ensemble des caches utilisés pour la création d'images Docker.