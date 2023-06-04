build:
	docker build -t react-image .

run:
	docker run -d -p 80:7000 -e PORT=7000 --rm --name react-container react-image

stop:
	docker stop react-container
