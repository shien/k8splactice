
build
```
$ docker build --no-cache  --rm -t shien07/http-ping:latest .
$ docker run -d -p 8080:8080 shien07/http-ping:latest
```

push docker image

```
$ docker login
$ docker push shien07/http-ping:latest
```

https://github.com/kubernetes-sigs/kind

register kind

https://kind.sigs.k8s.io/docs/user/ingress/
```
$ kubectl cluster-info --context kind-kind 
$ kubectl apply -f http-ping.yaml
$ kubectl get pods
NAME                                    READY   STATUS    RESTARTS   AGE
http-ping-deployment-659b9cd9c7-8fqtr   1/1     Running   0          26s
http-ping-deployment-659b9cd9c7-w5tlb   1/1     Running   0          2m2s
```
