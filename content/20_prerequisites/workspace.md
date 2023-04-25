---
title: "Create a Workspace"
chapter: false
weight: 14
---


{{% notice info %}}
The Cloud 9 Environment is already built for you. Just open the existing IDE in the Cloud9 console as per below.
{{% /notice %}}
![img.png](img.png)

{{% notice info %}}
A list of supported browsers for AWS Cloud9 is found [here]( https://docs.aws.amazon.com/cloud9/latest/user-guide/browsers.html).
{{% /notice %}}

{{% notice tip %}}
Ad blockers, javascript disablers, and tracking blockers should be disabled for
the cloud9 domain, or connecting to the workspace might be impacted.
Cloud9 requires third-party-cookies. You can whitelist the [specific domains]( https://docs.aws.amazon.com/cloud9/latest/user-guide/troubleshooting.html#troubleshooting-env-loading).
{{% /notice %}}

### Disable temporary Credentials

Select the gear icon in the upper right (or else select the "9" icon>Preferences in the upper left)

- Scroll down to "AWS Settings" in the "Preferences" tab
- Under "Credentials", disable "AWS managed temporary credentials"
- Close the "Preferences" tab
- Close the "AWS Toolkit" tabs

![c9before](/images/prerequisites/cloud9-tmp-cred.png)
