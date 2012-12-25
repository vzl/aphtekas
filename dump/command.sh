#!/bin/bash 

DATESTAMP=`date +"%Y-%m-%d-%H-%M-%S"` 
DBNAME=aphtekas_development
DESTFILE=aphtekas_development_$DATESTAMP.sql

mysqldump --user=root --password='' --database $DBNAME > ./mysql/$DESTFILE



