#!/bin/bash

echo "-- SHUTTING DOWN THE APP --" ;
docker-compose down &&
echo "-- BUILDING AND LAUNCHING THE APP --" ;
docker-compose up --build