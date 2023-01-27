# k8s

delete dangling replicaset

```
kubectl delete $(kubectl get all | grep replicaset.apps | grep "0         0         0" | cut -d' ' -f 1)
```

see the event 
```
kubectl get event
```
