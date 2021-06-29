## Docker
command to clean or find dangling images
```
docker images --filter="dangling=true" --format "{{ .ID }}"

docker rmi $(docker images --filter="dangling=true" --format "{{ .ID }}")

docker image prune

```



### Insecure Registry (ssl certificate error) Hack

```
Edit or create the file /etc/docker/daemon.json and add insecure-registries :

{
    "insecure-registries" : ["docker.squadwars.org:443"]
}

systemctl restart docker
```
or

```
first create a file - /etc/docker/daemon.json
 openssl s_client -showcerts -connect [registry_address]:[registry_port] < /dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > /etc/docker/certs.d/[registry_address]/ca.crt
 
 systemctl restart docker
```




## Docker Compose
Content to be filled!

## Docker Swarm
To setup a 3 node cluster , [click here](https://alexei-led.github.io/post/swarm_dind/) to follow step by step guide. 
or
```
# init Swarm master
docker swarm init

# get join token
SWARM_TOKEN=$(docker swarm join-token -q worker)

# get Swarm master IP (Docker for Mac xhyve VM IP)
SWARM_MASTER=$(docker info | grep -w 'Node Address' | awk '{print $3}')

# run NUM_WORKERS workers with SWARM_TOKEN
NUM_WORKERS=3
for i in $(seq “${NUM_WORKERS}"); do
  docker run -d --privileged --name worker-${i} --hostname=worker-${i} -p ${i}2375:2375 docker:1.12.1-dind
  docker --host=localhost:${i}2375 swarm join --token ${SWARM_TOKEN} ${SWARM_MASTER}:2377
done


# list Swarm nodes :)
docker node ls
```
