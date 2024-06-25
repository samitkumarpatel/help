# k8s

### Reference
- [shopd](https://github.com/jpetazzo/shpod) is a good tool to deal with k8s.
- [k8s command cheat sheet](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#exec)

### Basic Debugging on Namespace or in Cluster

```sh
k run -it  alpinecurl --image=alpine/curl -- sh
```


### Delete dangling replicaset

```
kubectl delete $(kubectl get all | grep replicaset.apps | grep "0         0         0" | cut -d' ' -f 1)
```

see the event 
```
kubectl get event
```
### Ingress DNS mappingn with external ingress

external-dns controller will help for this
