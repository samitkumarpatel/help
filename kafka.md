

### Offset reset [If you somehow looses the message and acknowledge it mistakenly]

A `config_file.config` need to have this details

```
security.protocol=SASL_SSL
bootstrap.servers=host:port
sasl.mechanism=PLAIN
sasl.jaas.config=org.apache.kafka.common.security.plain.PlainLoginModule required username='USERNAME' password='PASSWORD';
```

Command 
```sh
kafka-consumer-groups.sh --bootstrap-server HOST:PORT \
  --group CONSUMER_GROUP --topic TOPIC_NAME \
  --reset-offsets --to-datetime  2024-03-07T23:59:59.000 \
  --execute --command-config config_file.config
```

