.PHONY:	all
all:	latest wheezy

.PHONY:	latest
latest:	Dockerfile
	docker build -t hugo:latest .

.PHONY:	wheezy
wheezy:	0.20-wheezy/Dockerfile
	docker build -t hugo:020.wheezy 0.20-wheezy/



0.20-wheezy/Dockerfile:	Dockerfile
	sed -e 's/jessie/wheezy/' $< > $@
