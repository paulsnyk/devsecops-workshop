---
title: "Verify EKS connection"
chapter: false
weight: 20
hidden: true
---

Navigate to EKS, and copy the cluster name.
![eks](/images/eks-page.png)

Get the ARN for your 'eksworkshop-admin' Role

![eks](/images/eksworkshopiam.jpg)


Update or generate the kubeconfig file using the following command.

```sh
aws eks update-kubeconfig --name eksworkshop-eksctl --role-arn <ROLE ARN>
```

Verify EKS cluster
```sh
kubectl get nodes
```
