mkdir -p ./logs

./mongosync-ubuntu2004-x86_64-1.7.1/bin/mongosync \
    --logPath ./logs \
    --cluster0 "mongodb://127.0.0.1:27017/?replicaSet=rs0&directConnection=true" \
    --cluster1 "mongodb://127.0.0.1:27018/?replicaSet=rs0&directConnection=true" 
    