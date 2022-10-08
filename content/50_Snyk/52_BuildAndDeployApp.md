---
title: "Build and deploy the App"
chapter: true
weight: 52
---

## Build and deploy the App

Now that you’ve cloned the repo to your working environment, we’ll build a the container image and run our application in Amazon Elastic Kubernetes Service (EKS).

To build the container images, run the following commands (assuming you are cd’ed into the cloned goof repo directory):

```bash
cd nodejs-goof
```

Create a new repository in ECR and copy the URI of the repository to use later.

![ECR repository](/images/ecruri.jpg)


Build the app and push it to ECR using the provided script:

```bash
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin {Your ECR URI}}

DOCKER_ACCOUNT=478468688580.dkr.ecr.us-east-1.amazonaws.com ./imagebuild.sh
```

<strong>OR</strong> build and push the container using the commands

```bash
docker build -t {Your ECR URI}:latest .

docker push {Your ECR URI}:latest
```



Add the app to your EKS clustor

```bash
aws eks --region eu-west-2 update-kubeconfig --name nodejs-goof

kubectl create namespace nodejs-goof

kubectl config set-context --current --namespace=nodejs-goof

kubectl apply -f nodejs-goof-k8s.yaml
```

Check the app is working by connecting localy using port forarding 


```bash
kubectl port-forward svc/goof 8088:3001

http://localhost:8088
```



## Next: Hacking the application <!-- TODO: MODIFY the body -->
Now that your App is built lets hack it!
