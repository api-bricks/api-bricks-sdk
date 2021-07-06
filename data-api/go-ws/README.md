

## Installation

Install the following dependencies:

```shell
go mod download github.com/bitly/go-simplejson
go mod download github.com/shopspring/decimal
go mod download github.com/gorilla/websocket
```


## Run examples:

```bash
cd /path/to/workspace
export GOPATH=/path/to/workspace
go get -u github.com/CoinAPI/coinapi-sdk/data-api/go-ws
wget -v https://raw.githubusercontent.com/coinapi/coinapi-sdk/master/go-ws/main.go
# update api key inside main.go
go run ./main.go
```
