#Docker Registry Setup

* make sure to edit the `docker-compoose.yml` file so that the path is correct.
```
./docker_setup.sh
./get_certs.sh
./get_creds.sh <username>
mkdir data
docker-compose up -d
```
