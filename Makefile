NAME = lspg/axelor
VERSION = 4.1

.PHONY: all build tag_latest

all: build tag_latest

build:
	docker build -t $(NAME):$(VERSION) --rm .

tag_latest:
	docker tag $(NAME):$(VERSION) $(NAME):latest
