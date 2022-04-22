build:
	docker-compose build
startproject:
	docker-compose run app sh -c "django-admin.py startproject app ."
test:
	docker-compose run app sh -c "python manage.py test && flake8"
startapp: # Example: make startapp name=core
	docker-compose run app sh -c "python manage.py startapp $(name)"
makemigrations:	# Example: make makemigrations name=core
	docker-compose run app sh -c "python manage.py makemigrations $(name)"