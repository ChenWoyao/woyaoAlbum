cd /usr/woyao/woyaoAlbum
# docker-compose down
# docker-compose up -d
# 第一次运行需要安装
# npm install
# docker rm -f webDemo
# docker rmi -f webimage
# docker build -t webimage .
# docker run -d -p 3000:3000 --name webDemo --mount type=bind,source="${PWD}",target="/code/" webimage


