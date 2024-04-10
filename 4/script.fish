docker stop nginx
docker volume rm nginx_data

docker volume create nginx_data
docker run --rm -d --volume nginx_data:/usr/share/nginx/html --name nginx -p 8080:80 nginx
# changing index.html directly in volume data, might require some chmod
cp  index.html /var/lib/docker/volumes/nginx_data/_data/index.html