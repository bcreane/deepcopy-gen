deepcopy: deepcopy-gen
	docker build -f Dockerfile.deepcopy-gen -t deepcopy-gen:latest .

deepcopy-gen: deepcopy-gen.go
	go build deepcopy-gen.go

deepcopy-gen.go:
	wget https://raw.githubusercontent.com/kubernetes/code-generator/master/cmd/deepcopy-gen/main.go -O deepcopy-gen.go

clean:
	rm -f deepcopy-gen.go deepcopy-gen
	-docker rmi -f deepcopy-gen
