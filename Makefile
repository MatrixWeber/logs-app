run:
	docker run -d -p 3000:80 -v logs:/app/data --env-file ./config/.env --rm --name logsapp matrixweber/logsapp node app.js
run-dev:
	docker run -d -p 3000:80 -v "/Users/alex/Documents/projects/docker/logs-app:/app" -v /app/node_modules -v logs:/app/data --env-file ./config/.env --rm --name logsapp matrixweber/logsapp node app.js
stop:
	docker stop logsapp