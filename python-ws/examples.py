from websocket import create_connection
import json

test_key = 'YOUR_API_KEY'

class CoinAPIv1_subscribe(object):
  def __init__(self, apikey):
    self.type = "hello"
    self.apikey = apikey
    self.heartbeat = True
    self.subscribe_data_type = ["trade", "quote", "book20"]

ws = create_connection("wss://ws.coinapi.io/v1")
sub = CoinAPIv1_subscribe(test_key)
ws.send(json.dumps(sub.__dict__))
while True:
  msg =  ws.recv()
  print(msg)
  
ws.close()
