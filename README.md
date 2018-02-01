# Django
Docker Compose on Django

## Usage
Clone this repository, e.g.,
```sh
$ git clone https://github.com/epsilonxe/django your-new-project
```
Browse to the created directory
```sh
cd your-new-project
```
Next step is to run django via docker compose with the command
```sh
docker-compose run web django-admin.py startproject webapp .
```
Modify ```DATABASES``` section in ```you-new-project/webapp/setting.py```
with the following setting
```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'postgres',
        'USER': 'postgres',
        'HOST': 'db',
        'PORT': 5432,
    }
}
```
Save the setting file and close it.

Now run a docker compose
```sh
docker-compose up
```

The webapp is now running and can be surfed at ```localhost``` or ```127.0.0.1```.

To stop and remove the containers, just simply execute the command
```sh
docker-compose down
```
