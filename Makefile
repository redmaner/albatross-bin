TAG:="v0.20.3"


sync:
	./scripts/sync.sh ${TAG}

build: sync 
	./scripts/build.sh

install:
	./scripts/install.sh