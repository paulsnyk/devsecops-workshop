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

re-build and push the container useing the 'fixed' tag

```bash
docker build -t {Your ECR URI}:fixed .

docker push {Your ECR URI}:fixed
```

d
Update the line of code here - https://github.com/schottsfired/java-goof/blob/27f549ad83b76cd7a990e64e544a17e06c865b1f/todolist-goof/k8s/imagebuild.sh#L10-L14
to reflect the name of your repo and image/tag.

Update the app to your EKS clustor

```bash
aws eks --region eu-west-2 update-kubeconfig --name nodejs-goof

kubectl create namespace nodejs-goof

kubectl config set-context --current --namespace=nodejs-goof

kubectl apply -f nodejs-goof-k8s.yaml
```
