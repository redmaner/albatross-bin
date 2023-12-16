TAG:="v0.18.0"


sync:
	./scripts/sync.sh ${TAG}

build: sync 
	./scripts/build.sh

install:
	./scripts/install.sh