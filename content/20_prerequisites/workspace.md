---
title: "Create a Workspace"
chapter: false
weight: 14
---

{{% notice warning %}}
The Cloud9 workspace should be built by an IAM user with Administrator privileges,
not the root account user. Please ensure you are logged in as an IAM user, not the root
account user.
{{% /notice %}}

{{% notice warning %}}
If you are at an AWS Hosted Event the Cloud 9 Environment is already built for you. Just open the existing IDE in the Cloud9 console.
{{% /notice %}}

{{% notice info %}}
A list of supported browsers for AWS Cloud9 is found [here]( https://docs.aws.amazon.com/cloud9/latest/user-guide/browsers.html).
{{% /notice %}}


{{% notice info %}}
This workshop was designed to run in the **London (eu-west-2)** region. **Please don't
run in any other region.** Future versions of this workshop will expand region availability,
and this message will be removed.
{{% /notice %}}


{{% notice tip %}}
Ad blockers, javascript disablers, and tracking blockers should be disabled for
the cloud9 domain, or connecting to the workspace might be impacted.
Cloud9 requires third-party-cookies. You can whitelist the [specific domains]( https://docs.aws.amazon.com/cloud9/latest/user-guide/troubleshooting.html#troubleshooting-env-loading).
{{% /notice %}}

### Launch Cloud9 in your closest region:

{{< tabs name="Region" >}}
{{{< tab name="Oregon" include="us-west-2.md" />}}
{{{< tab name="Ireland" include="eu-west-1.md" />}}
{{{< tab name="Ohio" include="us-east-2.md" />}}
{{{< tab name="Singapore" include="ap-southeast-1.md" />}}
{{< /tabs >}}

- Select **Create environment**
- Name it **EKSLabIDE**, click Next.
- Choose **t3.small** for instance type, take all default values and click **Create environment**


- If you are at an AWS Hosted Event, select exiting Cloud9 instance.
  
- Select **existing instance**
![c9before](/images/prerequisites/cloud9-0.png)

When it comes up, customize the environment by:

- You can close the **Welcome tab** and continue with the **terminal** for the next steps
![c9before](/images/prerequisites/cloud9-1.png)


### Disable temporary Credentials

Select the gear icon in the upper right (or else select the "9" icon>Preferences in the upper left)

- Scroll down to "AWS Settings" in the "Preferences" tab
- Under "Credentials", disable "AWS managed temporary credentials"
- Close the "Preferences" tab
- Close the "AWS Toolkit" tabs

![c9before](/images/prerequisites/cloud9-tmp-cred.png)

Open a new terminal tab by clicking the green "+" sign and selecting "New Terminal".

- Copy and run this command:
```bash
aws s3 cp s3://ee-assets-prod-us-east-1/modules/3b406ca5c0ea4006bc8b954810da2625/v1/eksinit.sh . && chmod +x eksinit.sh && ./eksinit.sh ; source ~/.bash_profile

```

- Verify that you are able to access the cluster
```bash
kubectl get nodes

```

