run:
	docker run -e SLEEPYTIME=0 -e EXITCODE=1 -it jondkelley/container_that_quits_randomly:latest

build:
	docker build -t local-resume/container_that_quits_randomly:latest .
	@$(eval container_id=`docker images local-resume/container_that_quits_randomly:latest  --format "{{.ID}}"`)
	docker tag $(container_id) jondkelley/container_that_quits_randomly:latest

push:
	docker push jondkelley/container_that_quits_randomly:latest