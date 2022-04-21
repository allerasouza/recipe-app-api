build:
	docker-compose build
startproject:
	docker-compose run app sh -c "django-admin.py startproject app ."