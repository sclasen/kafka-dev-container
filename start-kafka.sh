#! /usr/bin/env bash

set -e

echo "zookeeper.connect=$ZK_CONN" >> /kafka/conf/server.properties
echo "host.name=$HOSTNAME" >> /kafka/conf/server.properties
echo "broker.id=1" >> /kafka/conf/server.properties

/kafka/kafka_2.9.2-0.8.1/bin/kafka-server-start.sh /kafka/conf/server.properties
