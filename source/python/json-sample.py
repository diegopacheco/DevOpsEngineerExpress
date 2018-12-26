import json

j = json.loads('{"gravatai" : "1763", "porto_alegre" : "1769"}')

print("Was founded in: " +j['porto_alegre'])
