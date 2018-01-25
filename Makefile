
IMAGE_PREFIX = detiber
IMAGE_REPO = dotfiles
IMAGE_VERSION ?= latest
IMAGE_NAME = $(IMAGE_PREFIX)/$(IMAGE_REPO):$(IMAGE_VERSION)

.PHONY: build push run

build:
	docker build -t $(IMAGE_NAME) .

push:
	gcloud docker -- push $(IMAGE_NAME)

run:
	docker run --security-opt="label=disable" -ti --rm -e COLORTERM=truecolor -e SSH_AUTH_SOCK=/ssh-agent -v ${SSH_AUTH_SOCK}:/ssh-agent:ro $(IMAGE_NAME)

kube-run:
	kubectl run -i -t --image=$(IMAGE_NAME) shell --restart=Never --rm

default: build
