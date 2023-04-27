---
title: "Build and deploy the App"
chapter: true
weight: 52
---

## Build and deploy the App

Now that you’ve cloned the repo to your working environment, we’ll build a the container image and run our application in Amazon Elastic Kubernetes Service (EKS).

To build the container images, run the following commands (assuming you are cd’ed into the cloned goof repo directory):


Create a new repository in ECR and copy the URI of the repository to use later.

<div style="padding-left: 10%;padding-right: 10%">
  <img src="/images/ecruri.jpg" />
</div>

Follow the instructions from 1 to 4 to build and push your docker container to the ECR


```bash
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin {Your URI}

docker build -t nodejs-goof .

docker tag nodejs-goof:latest {Your URI}:latest

docker push {Your URI}:latest

```


In the Cloud9 editor open the file nodejs-goof-k8s.yaml

<div style="padding-left: 10%;padding-right: 10%">
  <img src="/images/editfile.jpg" />
</div>


Update the line in nodejs-goof-k8s.yaml to point to your container


Add the app to your EKS clustor


```bash
aws eks --region us-west-2 update-kubeconfig --name eksworkshop-eksctl

kubectl create namespace nodejs-goof

kubectl config set-context --current --namespace=nodejs-goof

kubectl apply -f nodejs-goof-k8s.yaml
```


Find the public URL of the load balancer


```bash
kubectl get svc --all-namespaces
```

e.g. http://ab4000884979e4a72b7b1fefd2f115cd-1598805025.us-east-1.elb.amazonaws.com/

navigate to the app in a browser window

<br/>
**Note** You may need to expose port 80 on the ELB. If so run these commands:
```
ELB_SG=`aws ec2 describe-security-groups     --filters Name=group-name,Values=*eks-cluster*     --query "SecurityGroups[0].{ID:GroupId}" | jq -r '.ID'`
aws ec2 authorize-security-group-ingress --group-id $ELB_SG --protocol tcp --port 80 --cidr 0.0.0.0/0 <br/>
```



## Next: Hacking the application <!-- TODO: MODIFY the body -->
Now that your App is built lets hack it!
