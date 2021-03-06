# docker-ispconfig

Docker image for [ISPConfig](https://www.ispconfig.org/) with MariaDB
based on [the image by jerob](https://hub.docker.com/r/jerob/docker-ispconfig/).

Changes:

- nginx instead of apache2

Please note that this image is experimental. Fixes are welcome!

## Build

From local clone:

```sh
git clone https://github.com/thomasheller/docker-ispconfig
cd docker-ispconfig
docker build -t thomasheller/docker-ispconfig .
```

From remote repository:

```sh
docker build -t thomasheller/docker-ispconfig github.com/thomasheller/docker-ispconfig
```

## Run

Run the container and expose all used ports:

```sh
docker run --name ispconfig -e MAILMAN_EMAIL_HOST=test.com -e MAILMAN_EMAIL=test@test.com -e MAILMAN_PASS=pass -d -p 20:20 -p 21:21 -p 30000:30000 -p 30001:30001 -p 30002:30002 -p 30003:30003 -p 30004:30004 -p 30005:30005 -p 30006:30006 -p 30007:30007 -p 30008:30008 -p 30009:30009 -p 80:80 -p 443:443 -p 8080:8080 -p 53:53 -p 2222:22 thomasheller/docker-ispconfig /start.sh
```

Run the container and expose only ISPConfig port on localhost:

```sh
docker run --name ispconfig -e MAILMAN_EMAIL_HOST=test.com -e MAILMAN_EMAIL=test@test.com -e MAILMAN_PASS=pass -d -p 127.0.0.1:8080:8080 thomasheller/docker-ispconfig /start.sh
```

Shell access to the container:

```sh
docker exec -i -t ispconfig bash
```

Password reset for ISPConfig (`admin`/`admin`):

```sh
/password_reset.sh
```


