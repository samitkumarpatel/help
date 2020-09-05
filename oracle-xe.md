To work with Oracle-Xe

make sure you will have a docker compose file
```yml
version: '3'

services:
  oracle-db:
    image: oracleinanutshell/oracle-xe-11g:latest
    ports:
      - 1521:1521
      - 5500:5500
    networks:
    - oracle-net
networks:
  oracle-net:
```

To run this and access from sqlplus 
```sh
docker-compose up -d

docker run --rm -it --network host guywithnose/sqlplus sh
sh# sqlplus system/oracle@localhost:1521/xe
```
