
IMAGE_PREFIX = detiber
IMAGE_REPO = dotfiles
IMAGE_VERSION ?= latest
IMAGE_NAME = $(IMAGE_PREFIX)/$(IMAGE_REPO):$(IMAGE_VERSION)
GPG_AGENT_DIR = /run/user/1000/gnupg/
USER_HOME=/home/jdetiber

.PHONY: build push run

build:
	docker build -t $(IMAGE_NAME) .

push:
	docker push $(IMAGE_NAME)

run:
	docker run --security-opt="label=disable" -ti --rm -e COLORTERM=truecolor -e SSH_AUTH_SOCK=/ssh-agent -v ${GPG_AGENT_DIR}:${GPG_AGENT_DIR}:ro -v ${HOME}/.gnupg/:${USER_HOME}/.gnupg/:ro -v ${SSH_AUTH_SOCK}:/ssh-agent:ro $(IMAGE_NAME)

kube-run:
	kubectl run -i -t --image=$(IMAGE_NAME) shell --restart=Never --rm

default: build
