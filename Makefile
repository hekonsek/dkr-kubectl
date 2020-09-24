build:
	docker build . -t hekonsek/dkr-kubectl

push: build
	docker push hekonsek/dkr-kubectl