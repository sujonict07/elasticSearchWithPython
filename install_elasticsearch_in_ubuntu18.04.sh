sudo apt update
sudo apt install default-jdk
java -version

wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.0.0-amd64.deb
sudo dpkg -i elasticsearch-7.0.0-amd64.deb
cd /etc/elasticsearch/
hostname -I
# Copy host name and paste in yml file where host.name
sudo vim /etc/elasticsearch/elasticsearch.yml
#Chage the following values
```
 network.host: 0.0.0.0
 cluster.name: myCluster1
 node.name: "myNode1"
```
sudo systemctl start elasticsearch.service
sudo systemctl enable elasticsearch.service

http://localhost:9200/?pretty
```
{
  "name" : "node-1",
  "cluster_name" : "my-application",
  "cluster_uuid" : "5igYrE0tSUmT1vUL4FojEg",
  "version" : {
    "number" : "6.7.0",
    "build_flavor" : "default",
    "build_type" : "deb",
    "build_hash" : "8453f77",
    "build_date" : "2019-03-21T15:32:29.844721Z",
    "build_snapshot" : false,
    "lucene_version" : "7.7.0",
    "minimum_wire_compatibility_version" : "5.6.0",
    "minimum_index_compatibility_version" : "5.0.0"
  },
  "tagline" : "You Know, for Search"
}

```

curl -XGET http://192.168.1.103:9200
curl -XGET http://192.168.1.103:9200/_cat/health?v
curl -XPUT http://192.168.1.103:9200/novels
{"acknowledged":true,"shards_acknowledged":true,"index":"novels"}
curl -XPUT 'localhost:9200/novels/genre/1?pretty' -d' {"name": "Romance", "interesting": "yes"}'
