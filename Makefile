build:
	rm -rf xpto-notifications-api xpto-notifications-webapp
	git clone https://github.com/lucascardial/xpto-notifications-api.git
	git clone https://github.com/lucascardial/xpto-notifications-webapp.git
	docker-compose --env-file .env up -d --build
	sleep 5 && open http://notifications.xpto.localhost/dashboard

start:
	docker-compose --env-file .env up -d
	sleep 5 && open http://notifications.xpto.localhost/dashboard

stop:
	docker-compose down