dev:
	docker compose up -d --build

pro:
	docker compose -f docker-compose.prod.yml up -d --build

down:
	docker compose down -v

flush:
	docker compose exec web python manage.py flush --no-input
	docker compose exec web python manage.py migrate

logs:
	docker-compose -f docker-compose.prod.yml logs -f

migrate:
	docker-compose -f docker-compose.prod.yml exec web python manage.py migrate --noinput

run: migrate
	docker-compose -f docker-compose.prod.yml exec web python manage.py collectstatic --no-input --clear

start: pro run

clean: down
	docker rmi django-on-docker-web-1
	yes | docker system prune


fclean: clean
	rm -rf data
	docker rmi -f django-on-docker-web-1
	docker rmi -f django-on-docker-db-1
	docker rmi -f django-on-docker-nginx-1
	yes | docker system prune
	yes | docker volume prune

fresh: fclean start 

ps:
	@docker compose ps

restart:
	docker compose restart