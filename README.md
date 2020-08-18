# go-docker-env-sample

## Build and run docker container

```.sh
# build
docker build --rm -t go-docker-env-sample .
# run
docker run -itd --rm --name go-docker-env-sample -p 9000:8080 go-docker-env-sample
# request
curl "localhost:9000"
```
