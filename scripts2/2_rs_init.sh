docker exec scripts2-mongo2-1  mongosh --eval "rs.initiate();"
docker exec scripts2-mongo1-1  mongosh --eval "rs.initiate();"


docker exec scripts2-mongo2-1  mongosh --eval "rs.status();"
docker exec scripts2-mongo1-1  mongosh --eval "rs.status();"

