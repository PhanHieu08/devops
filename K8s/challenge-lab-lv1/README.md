# Challenge lab 1: default nginx 

> **_NOTE:_**  Sử dụng KinD. File kind.conf từ kubelab của thầy Lâm

Tạo file config cho deployment nginx với image nginx và replicas = 2
 ```
❯ k create depoy nginx --image nginx --replicas=2 --dry-run=client -o yaml > templates/nginx-deploy.yaml
 ```
 Kiểm tra file đã tạo
 ```
❯ cat templates/nginx-deploy.yaml
apiVersion: v1
kind: Service
metadata:
  creationTimestamp: null
  labels:
    app: nginx
  name: nginx
spec:
  ports:
  - name: 80-80
    port: 80
    protocol: TCP
    targetPort: 80
  selector:
    app: nginx
  type: NodePort
status:
  loadBalancer: {}
```
Tạo deployment từ file config
```
❯ k create -f templates/nginx-deploy.yaml
```
Tạo file config cho service nodeport nginx 
```
❯ k create svc nodeport nginx --tcp=80:80 --dry-run=client -o yaml > templates/nginx-svc.yaml
```
Kiểm tra file config cho service
```
❯ cat templates/nginx-svc.yaml
apiVersion: v1
kind: Service
metadata:
  creationTimestamp: null
  labels:
    app: nginx
  name: nginx
spec:
  ports:
  - name: 80-80
    port: 80
    protocol: TCP
    targetPort: 80
    # Thêm vào khi sử dụng KinD
    nodePort: 32002
  selector:
    app: nginx
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
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
```
