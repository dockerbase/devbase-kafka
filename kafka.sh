# Information Of Package
KAFKA_NAME=kafka
KAFKA_VERSION=${KAFKA_NAME}_2.11-0.8.2.0
KAFKA_PACKAGE=${KAFKA_VERSION}.tgz
KAFKA_LINK=http://www.gtlib.gatech.edu/pub/apache/kafka/0.8.2.0/$KAFKA_PACKAGE

echo $KAFKA_LINK
# Kafka
cd /tmp && \
curl -O -L $KAFKA_LINK && \
tar -zxf /tmp/$KAFKA_PACKAGE -C /usr/local && \
ln -s /usr/local/$KAFKA_VERSION /usr/local/$KAFKA_NAME && \
rm -rf /tmp/* /var/tmp/*

