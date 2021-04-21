cd /usr/woyao/woyaoAlbum
docker rm -f webDemo
docker rmi -f webimage
docker build -t webimage .
docker run -d -p 3000:3000 --name webDemo webimage
