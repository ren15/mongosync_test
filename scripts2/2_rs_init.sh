docker exec -it scripts2-mongo2-1  mongosh --eval "rs.initiate();"
docker exec -it scripts2-mongo1-1  mongosh --eval "rs.initiate();"


docker exec -it scripts2-mongo2-1  mongosh --eval "rs.status();"
docker exec -it scripts2-mongo1-1  mongosh --eval "rs.status();"

