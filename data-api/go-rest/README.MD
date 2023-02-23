To run examples:

```bash
cd /path/to/workspace
export GOPATH=/path/to/workspace
go get -u github.com/CoinAPI/coinapi-sdk/data-api/go-rest/v1
wget -v https://raw.githubusercontent.com/coinapi/coinapi-sdk/master/go-rest/main.go
# update api key inside main.go
go run ./main.go
```
