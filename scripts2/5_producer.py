import time
from pymongo import MongoClient

# Connect to MongoDB
client = MongoClient("mongodb://127.0.0.1:27017/?replicaSet=rs0&directConnection=true")
client2 = MongoClient("mongodb://127.0.0.1:27018/?replicaSet=rs0&directConnection=true")

collection1 = client["mydatabase"]["mycollection"]
collection2 = client2["mydatabase"]["mycollection"]

# delete all
collection1.delete_many({})
collection2.delete_many({})

time.sleep(0.5)


def print_collection(name, collection):
    print(name)
    records = collection.find()
    for record in records:
        print(record)


print_collection("client1", collection1)

collection1.insert_one({"x": 1})

time.sleep(0.5)

print_collection("client1", collection1)

time.sleep(0.5)

print_collection("client2", collection2)


time.sleep(0.5)

# change collection1's value

collection1.update_one({"x": 1}, {"$set": {"x": 2}})
collection1.insert_one({"x": 3})
time.sleep(0.5)

print_collection("client1", collection1)

time.sleep(0.5)

print_collection("client2", collection2)
