.PHONY: all clean build up

all: clean build up 

build:
	packer build ./packer-debian-stable.json
up:
	vagrant destroy -f && vagrant box remove vagrant_machine && vagrant up || vagrant box remove vagrant_machine && vagrant up || vagrant up

clean:
	rm ./packer-debian-stable.box && rm -rf ./packer_cache && vagrant destroy -f && vagrant box remove vagrant_machine || true
