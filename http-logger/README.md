# Documentation Notes

Main Red Hat documentation:
https://docs.openshift.com/container-platform/4.17/observability/logging/logging-6.1/log6x-clf-6.1.html

The Red Hat documentation is incomplete. This is a link to the upstream doco: https://github.com/openshift/cluster-logging-operator/blob/master/docs/reference/operator/api_observability_v1.adoc

# Testing Kafka

When debugging the kafka configuration these two commands are useful:

## Producer
```
oc run kafka-producer -ti --image=registry.redhat.io/amq-streams/kafka-38-rhel9:2.8.0 --rm=true --restart=Never -- bin/kafka-console-producer.sh --bootstrap-server logging-cluster-kafka-bootstrap.streams-kafka.svc.cluster.local:9092 --topic cluster-events
```

## Consumer
```
oc run kafka-consumer -ti --image=registry.redhat.io/amq-streams/kafka-38-rhel9:2.8.0 --rm=true --restart=Never -- bin/kafka-console-consumer.sh --bootstrap-server logging-cluster-kafka-bootstrap.streams-kafka.svc.cluster.local:9092 --topic cluster-events --from-beginning
```
