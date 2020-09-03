HERE      := $(dir $(realpath $(lastword $(MAKEFILE_LIST))))
REPOS     := sandbox
TAG       := pg
HOST      := my-sandbox
CONTAINER := $(REPOS)_$(TAG)
USERNAME  := app
VOLUMEDIR := Projects

.PHONY: build active deactive attach start stop clean cleani cleanc cleant

build:
	docker build --build-arg username=$(USERNAME) --squash -t $(REPOS):$(TAG) $(HERE)
	docker image prune -f

prepare:
ifeq (,$(shell find $(HOME) -maxdepth 1 -type d -name $(VOLUMEDIR)))
	mkdir $(HOME)/$(VOLUMEDIR)
endif

enter: prepare
	docker run --rm -it -u $(USERNAME) -h $(HOST) \
		-v $(HOME)/$(VOLUMEDIR):/home/$(USERNAME)/$(VOLUMEDIR) \
		$(REPOS):$(TAG) $(shell docker run --rm -it $(REPOS):$(TAG) which zsh)

admin: prepare
	docker run --rm -it -u root -w /root -h $(HOST) \
		-v $(HOME)/$(VOLUMEDIR):/root/$(VOLUMEDIR) \
		$(REPOS):$(TAG) $(shell docker run --rm -it $(REPOS):$(TAG) which zsh)

clean: cleanc cleani

cleani:
	-docker rmi $(shell docker images -q $(REPOS))
	-docker image prune -f

cleanc:
	-docker rm -f $(CONTAINER)
	-docker container prune -f

cleant:
	-docker rmi $(REPOS):$(TAG)
