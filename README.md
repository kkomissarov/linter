# DOCKER LINTER FOR PYTHON3 PROJECTS

## RUN WITH DOCKER
Build container
```
docker build -t linter .
```

Run linter passing your code into container
```
docker run --rm -v /path/to/your/code:/src linter lint
```

## RUN WITH DOCKER-COMPOSE
Add this part to your docker-compose.yaml file
```
services:
  linter:
    image: linter
    volumes:
      - /path/to/your/code:/src
```

Then run linter with following command
```
docker-compose run --rm linter lint
```