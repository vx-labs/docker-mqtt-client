all: docker
docker:
	docker build  -t vxlabs/iotclient  .
