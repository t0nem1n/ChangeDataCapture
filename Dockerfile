ARG DEBEZIUM_VERSION
FROM debezium/connect:$DEBEZIUM_VERSION

USER root
RUN yum -y install unzip && yum clean all

USER kafka
RUN curl -LO https://d1i4a15mxbxib1.cloudfront.net/api/plugins/confluentinc/kafka-connect-jdbc/versions/10.2.5/confluentinc-kafka-connect-jdbc-10.2.5.zip && \
    unzip ./confluentinc-kafka-connect-jdbc-10.2.5.zip -d ~/connect