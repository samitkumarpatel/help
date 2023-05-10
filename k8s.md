# k8s
- [shopd](https://github.com/jpetazzo/shpod) is a good tool to deal with k8s.

delete dangling replicaset

```
kubectl delete $(kubectl get all | grep replicaset.apps | grep "0         0         0" | cut -d' ' -f 1)
```

see the event 
```
kubectl get event
```
