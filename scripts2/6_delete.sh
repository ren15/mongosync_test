cd $(dirname $0)

docker compose  down

docker volume rm scripts2_mongo1_config scripts2_mongo1_data scripts2_mongo2_config scripts2_mongo2_data