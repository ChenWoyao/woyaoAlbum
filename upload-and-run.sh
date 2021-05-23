# 第一次的运行
# scp -r . root@121.5.231.10:/usr/woyao/woyaoAlbum
# 之后只需要上传uploads下本次新增的图片就好
scp -r ./uploads/bale root@121.5.231.10:/usr/woyao/woyaoAlbum/uploads/
ssh root@121.5.231.10 'sh /usr/woyao/woyaoAlbum/run.sh'
