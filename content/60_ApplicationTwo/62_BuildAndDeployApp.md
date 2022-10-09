---
title: "Build and deploy the App"
chapter: true
weight: 62
---

## Build and deploy the App

Now that you’ve cloned the repo to your working environment, we’ll build a the container image and run our application in Amazon Elastic Kubernetes Service (EKS).

To build the container images, run the following commands (assuming you are cd’ed into the cloned goof repo directory):

```bash
cd java-goof
cd todolist-goof
```

Create a new repository in ECR and copy the URI of the repository to use later.

![ECR repository](/images/ecruri.jpg)


Authorise Docker to interact with ECR

```bash
aws ecr get-login-password --region eu-west-2 | docker login --username AWS --password-stdin {Your ECR URI}
```

Build the app and push it to ECR using the provided script:

```bash
DOCKER_ACCOUNT={Your ECR URI} ./imagebuild.sh
```

<strong>OR</strong> build and push the container using the commands

```bash
docker build -t {Your ECR URI}:latest .

docker push {Your ECR URI}:latest
```

Update the line in java-goof.yaml to point to your container


Add the app to your EKS clustor

```bash
aws eks --region eu-west-2 update-kubeconfig --name nodejs-goof

kubectl create namespace java-goof

kubectl config set-context --current --namespace=java-goof

kubectl apply -f java-goof.yaml
```

Check the app is working by connecting localy using port forarding 


```bash
kubectl port-forward svc/goof 8088:3001

http://localhost:8080/todolist/
```



## Next: Hacking the application <!-- TODO: MODIFY the body -->
Now that your App is built lets hack it!
