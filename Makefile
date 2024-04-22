TAG:="v0.20.4"


sync:
	./scripts/sync.sh ${TAG}

build: sync 
	./scripts/build.sh

install:
	./scripts/install.sh