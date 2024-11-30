### Docker Swarm Tips and Tricks

Initialize docker to docker swarm ::

Make sure you have your own ip inpace or find the network with `ifconfig` or `ipconfig`

```sh
docker swarm init --advertise-addr=192.168.43.171 --listen-addr=192.168.43.171 --data-path-addr=192.168.43.171
# OR
docker swarm init --advertise-addr=eth1 --listen-addr=eth1 --data-path-addr=eth1
```
