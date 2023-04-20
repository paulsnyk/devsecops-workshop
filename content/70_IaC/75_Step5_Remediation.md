---
title: "IaC Issue Remediation"
chapter: true
weight: 75
---

## Step 5 Use the Snuk UI to get remediation advice

Now that Snyk is connected to your GitHub Account, import the Repo into Snyk as a Project.

* Navigate to Projects
* Click the **vpc.json** CloudFormation file

![alt tag](https://i.ibb.co/Gp4QdJ4/snyk-iac-remediation-2.png)

* Review the first issue "**Security Group allows open ingress**"

![alt tag](https://i.ibb.co/pZvx4Pd/snyk-iac-remediation-3.png)

A Security Group controls the traffic that is allowed to reach and leave the resources that it is associated with. This security group is configured insecurely because inbound traffic is allowed to a resource from any source, instead of a restricted range

We will resolve this by entering an IP range from which traffic is allowed.

* Copy the CidrIp Range **192.16.0.0/24**

![alt tag](https://i.ibb.co/StyPY29/snyk-iac-remediation-4.png)

* Open the **vpc.json** file in Cloud9
* Change the CidrIp range from 0.0.0.0/0 to 192.16.0.0/24
* Click **File** -> **Save All**

![alt tag](https://i.ibb.co/xHKmq4Q/Screenshot-2023-04-20-at-11-19-34-am.png)

* Go to **sourcecontrol**
* **Commit** and **Push** changes

![alt tag](https://i.ibb.co/r5Z7YZB/snyk-iac-remediation-7.png)

* In the Snyk UI review the **vpc.json** project again. "**Security Group allows open ingress**" has been remediated and is no longer an issue.

![alt tag](https://i.ibb.co/JmFXTRF/snyk-iac-remediation-8.png)
