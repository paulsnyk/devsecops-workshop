---
title: "Fix and re-deploy the App"
chapter: true
weight: 65
---

## Fix and re-deploy the App

update container to 

```bash

FROM tomcat:8.5.51
```



re-build and push the container useing the 'fixed' tag

```bash
docker build -t {Your ECR URI}:fixed .

docker push {Your ECR URI}:fixed
```


Update the line of code here in java-goof.yaml 

```bash
- image: 478468688580.dkr.ecr.eu-west-2.amazonaws.com/java-goof:fixed
```

to reflect the name of your repo and image/tag.

Update the app to your EKS clustor

```bash
aws eks --region eu-west-2 update-kubeconfig --name nodejs-goof

kubectl apply -f java-goof.yaml
```
