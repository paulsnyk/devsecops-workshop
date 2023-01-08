---
title: "Fix and re-deploy the App"
chapter: true
weight: 55
---

## Fix and re-deploy the App

In any text editor open the App's package.json

```bash
    "ms": "^0.7.1",
    "mysql": "^2.18.1",
    "npmconf": "0.0.24",
    "optional": "^0.1.3",
    "st": "0.2.4",
    "stream-buffers": "^3.0.1",
    "tap": "^11.1.3",
    "typeorm": "^0.2.24",
    "validator": "^13.5.2"
```

Update the st package line to use 0.2.5

```bash
    "ms": "^0.7.1",
    "mysql": "^2.18.1",
    "npmconf": "0.0.24",
    "optional": "^0.1.3",
    "st": "0.2.5",
    "stream-buffers": "^3.0.1",
    "tap": "^11.1.3",
    "typeorm": "^0.2.24",
    "validator": "^13.5.2"
```

Again using the push commants from your ECS repository push commands re-build and push the container, this time using the 'fixed' tag

**You may not need to perform the first line depending on the time taken

```bash
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin {Your URI}

docker build -t nodejs-goof .

docker tag nodejs-goof:latest {Your URI}:fixed

docker push {Your URI}:fixed
```

In the Cloud9 editor, edit the file nodejs-goof-k8s.yaml to point to your new conatiner tag

<div style="padding-left: 10%;padding-right: 10%">
  <img src="/images/editfile-fixed.jpg" />
</div>

Update the app to your EKS clustor

```bash
kubectl apply -f nodejs-goof-k8s.yaml
```
