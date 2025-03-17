# Overview

This application sets up a Kafta topic on an existing Kafka Cluster

It uses the generic [Red Hat Streams for Apache Kafka](https://docs.redhat.com/en/documentation/red_hat_streams_for_apache_kafka/2.9) Getting Started steps to establish the cluster and also generating the client certificate.

# Main Documentation

The following notes are based on this section of the documentation: [Getting Started with Streams for Apache Kafka on OpenShift](https://docs.redhat.com/en/documentation/red_hat_streams_for_apache_kafka/2.9/html/getting_started_with_streams_for_apache_kafka_on_openshift/index)  

# Testing the Topic from Within OpenShift
This test will spin up a producer and ocnsumer on the cluster. No authz is required.
Update 

## Producer
```
oc run kafka-producer -ti --image=registry.redhat.io/amq-streams/kafka-38-rhel9:2.8.0 --rm=true --restart=Never -- bin/kafka-console-producer.sh --bootstrap-server logging-cluster-kafka-bootstrap:9092 --topic cluster-events
```

## Consumer
```
oc run kafka-consumer -ti --image=registry.redhat.io/amq-streams/kafka-38-rhel9:2.8.0 --rm=true --restart=Never -- bin/kafka-console-consumer.sh --bootstrap-server logging-cluster-kafka-bootstrap:9092 --topic cluster-events --from-beginning
```

# Testing the Topic from Outside OpenShift