SRC_DIR := public/

build:
	@hugo

upload:
	cd $(SRC_DIR)
	git commit -a -m "build site (again)"
	git push origin master
	
deploy: build upload

server:
	-@hugo server

clean:
	@rm -rf $(SRC_DIR)
