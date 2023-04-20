---
title: "Attach the IAM role to your Workspace"
chapter: false
weight: 17
hidden: true
---
{{% notice info %}}
If you are using the event account admin role is already attached to the instance and you can skip to the next step.
{{% /notice %}}

1. Click the grey circle button (in top right corner) and select **Manage EC2 Instance**.
![cloud9Role](/images/prerequisites/cloud9-role.png)
1. Select the instance, then choose **Actions / Security / Modify IAM Role**
![c9instancerole](/images/prerequisites/c9instancerole.png)
1. Choose **eksworkshop-admin** from the **IAM Role** drop down, and select **Save**
![c9attachrole](/images/prerequisites/c9attachrole.png)
