all: docker
docker:
	docker build  -t vxlabs/mqtt-client  .
