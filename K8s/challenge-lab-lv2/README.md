# Challenge lab 2: static web pod

> **_NOTE:_** Sử dụng KinD. File kind.conf từ kubelab của thầy Lâm

Build image từ Dockerfile
```
❯ docker build . -t phanhieu0825/staticweb:0.1
```

Login vào docker hub với username và sau đó nhập mật khẩu
```
❯ docker login -u phanhieu0825
```
Push image đã tạo lên docker hub
```
❯ docker push phanhieu0825/staticweb:0.1
```

Tạo file config cho deployment staticweb với image staticweb đã tạo ở trên và replicas = 2

```
❯ k create depoy staticweb --image phanhieu0825/staticweb --replicas=2 --dry-run=client -o yaml > templates/staticweb-deploy.yaml
```
Kiểm tra file đã tạo

```
❯ cat templates/staticweb-deploy.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  creationTimestamp: null
  labels:
    app: staticweb
  name: staticweb
spec:
  replicas: 2
  selector:
    matchLabels:
      app: staticweb
  strategy: {}
  template:
    metadata:
      creationTimestamp: null
      labels:
        app: staticweb
    spec:
      containers:
      - image: phanhieu0825/staticweb:0.1
        name: staticweb
        resources: {}
status: {}

```

Tạo deployment từ file config

```
❯ k create -f templates/staticweb-deploy.yaml
```

Tạo file config cho service nodeport staticweb

```
❯ k create svc nodeport staticweb --tcp=80:80 --dry-run=client -o yaml > templates/staticweb-svc.yaml
```

Kiểm tra file config cho service

```
❯ cat templates/staticweb-svc.yaml
apiVersion: v1
kind: Service
metadata:
  creationTimestamp: null
  labels:
    app: staticweb
  name: staticweb
spec:
  ports:
  - name: 80-80
    port: 80
    protocol: TCP
    targetPort: 80
    nodePort: 32002
  selector:
    app: staticweb
  type: NodePort
status:
  loadBalancer: {}

```

Tạo service từ file config

```
❯ k create -f templates/nginx-deploy.yaml
```

Sử dụng curl để kiểm tra service đã tạo

```
❯ curl 127.0.0.1:32002
```
hoặc truy cập trực tiếp vào địa chỉ ip trên 