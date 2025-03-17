#! /bin/bash

oc run kafka-consumer -ti --image=registry.redhat.io/amq-streams/kafka-38-rhel9:2.8.0 --rm=true --restart=Never -- bin/kafka-console-consumer.sh --bootstrap-server logging-cluster-kafka-bootstrap:9092 --topic cluster-events --from-beginning

