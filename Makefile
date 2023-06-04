build:
	docker build -t react-image .

run:
	docker run -d -e PORT=7000 -p 80:7000 --rm --name react-container react-image

stop:
	docker stop react-container

run-dev:
	echo Server is started in dev mode on port 3000:3000.
	docker run -d -e PORT=3000 -p 3000:3000 -v "C:\Users\Roman\Desktop\docker-lesson\node:/app" -v /app/node_modules --rm --name react-container-dev react-image

stop-dev:
	docker stop react-container-dev
