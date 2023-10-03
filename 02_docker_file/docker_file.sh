# crée la nouvelle image
docker build -t ngserver .

# run new container
docker run -d --name test_angular -p 4200:4200 ngserver

# first create app and  ng new app --directory ./ --skip-git inside
docker run -d --name test_angular -v $(pwd)/app:/app -p 4200:4200 ngserver