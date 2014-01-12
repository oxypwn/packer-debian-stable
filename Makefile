.PHONY: all clean build up

all: clean build up 

build:
	packer build ./debian-7.3.0-amd64.json
up:
	vagrant destroy -f && vagrant box remove vagrant_machine && vagrant up || vagrant box remove vagrant_machine && vagrant up || vagrant up

clean:
	rm ./debian-7.3.0-amd64.box && rm -rf ./packer_cache && vagrant destroy -f && vagrant box remove vagrant_machine || true
