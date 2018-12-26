import yaml

with open("/home/diego/bin/apache-cassandra-3.9/conf/cassandra.yaml", 'r') as stream:
    try:
        y = yaml.load(stream)
        print(y["seed_provider"][0]["parameters"][0])
        print(y)
    except yaml.YAMLError as exc:
        print(exc)
