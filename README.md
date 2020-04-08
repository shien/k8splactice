### make Docker image
build and check
```
$ docker build --no-cache  --rm -t shien07/http-ping:latest .
$ docker run -d -p 8080:8080 shien07/http-ping:latest
```

Push Docker image to Docker resistory
```
$ docker login
$ docker push shien07/http-ping:latest
```

### install kind
https://github.com/kubernetes-sigs/kind

### register kind

using contour
```
$ sh init-kind.sh
$ kubectl apply -f http-ping.yaml
$ kubectl get pods
NAME                                    READY   STATUS    RESTARTS   AGE
http-ping-deployment-659b9cd9c7-8fqtr   1/1     Running   0          26s
http-ping-deployment-659b9cd9c7-w5tlb   1/1     Running   0          2m2s
$ kubectl apply -f client-app.yaml
```

check connect to service
```
$ kubectl exec client-app-6685454f4d-b8q4p -it /bin/sh
# apk add curl
# curl localhost:8080/ping
pong#
```

https://kind.sigs.k8s.io/docs/user/ingress/
