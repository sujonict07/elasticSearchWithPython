sudo apt update && apt upgrade -y
sudo reboot  
sudo add-apt-repository ppa:webupd8team/java
sudo apt install oracle-java8-set-default
java -version
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.3.2.deb
ls
dpkg -i elasticsearch-6.3.2.deb
sudo dpkg -i elasticsearch-6.3.2.deb
cd /etc/elasticsearch/
hostname -I
# Copy host name and paste in yml file where host.name
sudo vim /etc/elasticsearch/elasticsearch.yml
sudo systemctl start elasticsearch.service
sudo systemctl enable elasticsearch.service
curl -XGET http://192.168.1.103:9200
curl -XGET http://192.168.1.103:9200/_cat/health?v
curl -XPUT http://192.168.1.103:9200/novels
{"acknowledged":true,"shards_acknowledged":true,"index":"novels"}
curl -XPUT 'localhost:9200/novels/genre/1?pretty' -d' {"name": "Romance", "interesting": "yes"}'
