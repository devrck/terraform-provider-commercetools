build:
	go build

test:
	go test -v ./... 

coverage:
	go test -race -coverprofile=coverage.txt -covermode=atomic -coverpkg=./... ./...
	go tool cover -html=coverage.txt

testacc:
	TF_ACC=1 go test -v ./...