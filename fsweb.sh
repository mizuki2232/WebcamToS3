!/bin/sh

while :
do
    DATE=$(date +"%Y-%m-%d_%H%M%S")
    fswebcam $DATE.jpg
    aws s3 cp $DATE.jpg s3://yourbucketname
    rm $DATE.jpg
    sleep 10
done
