---
title: "Fix and re-deploy the App"
chapter: true
weight: 65
---

## Fix and re-deploy the App

Open the file Dockerfile in the todolist-goof folder.

Change the FROM line to:

```bash
FROM tomcat:8.5.81
```

<div style="padding-left: 10%;padding-right: 10%">
  <img src="/images/editfile-dockerfile.jpg" />
</div>

re-build and push the container using the 'fixed' tag

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
