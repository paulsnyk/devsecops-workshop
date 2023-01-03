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


Select the repository radio box in the list and click on 'View push commands'

Follow the instructions from 1 to 4 to build and push your docker container to the ECR

Build the container and push it to ECR using the provided script:

```bash
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin {Your URI}

docker build -t nodejs-goof .

docker tag nodejs-goof:latest {Your URI}:latest

docker push {Your URI}:latest

```


In the Cloud9 editor open the file java-goof.yaml

![snyk-project-entry](/images/editfile.jpg)

Update the line in java-goof.yaml to point to your container


Add the app to your EKS clustor

```bash
aws eks --region eu-west-2 update-kubeconfig --name nodejs-goof

kubectl create namespace java-goof

kubectl config set-context --current --namespace=java-goof

kubectl apply -f java-goof.yaml
```


Find the public URL of the load balancer


```bash
kubectl get svc --all-namespaces
```

e.g. http://ab4000884979e4a72b7b1fefd2f115cd-1598805025.us-east-1.elb.amazonaws.com/

navigate to the app in a browser window


## Next: Hacking the application <!-- TODO: MODIFY the body -->
Now that your App is built lets hack it!
