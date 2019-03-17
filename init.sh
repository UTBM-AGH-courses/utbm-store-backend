
echo "-- SHUTTING DOWN THE APP --" ;
docker-compose down &&
echo "-- BUILDING AND LAUNCHING THE APP --" ;
sudo docker-compose up --build