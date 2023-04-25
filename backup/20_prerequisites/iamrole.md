---
title: "Create an IAM role for your Workspace"
chapter: false
weight: 16
hidden: true
---

{{% notice info %}}
If you are using the event account this role is already created and you can skip to the next step.
{{% /notice %}}

1. Follow [this deep link to create an IAM role with Administrator access](https://console.aws.amazon.com/iam/home#/roles$new?step=review&commonUseCase=EC2%2BEC2&selectedUseCase=EC2&policies=arn:aws:iam::aws:policy%2FAdministratorAccess&roleName=eksworkshop-admin).
2. Confirm that **AWS service** and **EC2** are selected, then click **Next: Permissions** to view permissions.
3. Confirm that **AdministratorAccess** is checked, then click **Next: Tags** to assign tags.
4. Take the defaults, and click **Next: Review** to review.
5. Enter **eksworkshop-admin** for the Name, and click **Create role**.
![createrole](/images/prerequisites/createrole.png)
