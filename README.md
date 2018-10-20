## Deploy Web App using Docker / Nginx

Todo:
* Add HTTPS


## Usage

* Build a the image
```shell
docker image build -t firstapp .
```

* View new built image
```shell
docker image ls
```
* Launch a container from an image
```shell
docker container run --detach --name appcontainer -p 8080:80 firstapp

# View if container is running
docker container ls
```

* Stop container
```shell
docker container stop appcontainer
```

* Remove image
```
docker image rm -f firstapp
```
