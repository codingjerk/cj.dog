# cj.dog

> Personal website

### Deploy

```sh
docker-compose up -d
```

### Deploy without compose

```sh
docker build --tag cj.dog .
docker run --detach --publish=80:80 --name=cj.dog --restart=always cj.dog
```
