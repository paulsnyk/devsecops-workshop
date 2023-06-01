---
title: "Create a Workspace"
chapter: false
weight: 14
---

{{% notice info %}}
If you are at an AWS Hosted Event the Cloud 9 Environment is already built for you. Just open the existing IDE in the Cloud9 console.
{{% /notice %}}

{{% notice warning %}}
The Cloud9 workspace should be built by an IAM user with Administrator privileges,
not the root account user. Please ensure you are logged in as an IAM user, not the root
account user.
{{% /notice %}}

### Create a Cloud9 instance:

- Select **Create environment**
- Name it **EKSLabIDE**, click Next.
- Choose **t3.small** for instance type, take all default values and click **Create environment**
![c9before](/images/prerequisites/cloud9-0.png)

When it comes up, customize the environment by:

- You can close the **Welcome tab** and continue with the **terminal** for the next steps
![c9before](/images/prerequisites/cloud9-1.png)

### Disable temporary Credentials

Select the gear icon in the upper right (or else select the "9" icon>Preferences in the upper left)

- Open the Cloud9 **Preferences** tab and scroll down to **AWS Settings**
- Under **Credentials**, disable **AWS managed temporary credentials**

![c9before](/images/prerequisites/cloud9-tmp-cred.png)

Open a new terminal tab by clicking the green **+** sign and selecting **New Terminal**.

- Copy and run this bash command:
```bash
aws s3 cp s3://ee-assets-prod-us-east-1/modules/3b406ca5c0ea4006bc8b954810da2625/v1/eksinit.sh . && chmod +x eksinit.sh && ./eksinit.sh ; source ~/.bash_profile
```

- Verify that you are able to access the cluster
```bash
kubectl get nodes
```
