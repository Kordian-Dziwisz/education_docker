docker stop nginx
docker build -t education_docker_06_1:latest .
docker run --rm -d --name nginx -p 8080:80 education_docker_06_1

