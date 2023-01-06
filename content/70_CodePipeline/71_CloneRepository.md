---
title: "Setup Basic Services"
chapter: false
weight: 71
---

### Introduction

We are going to push this repository to CodeCommit then setup a CodePipeline to run on every commit

### Basic Services CloudFormation Stack

Goto CodeCommit and create a repository call eks-workshop

Copy the clone URL

![snyk-project-entry](/images/codepipline-1.jpg)



Set the local Git repo in the nodejs-goof folder to use your new repo as the remote

```bash
git remote set-url origin {Your Repo URL}
git config --global credential.helper '!aws codecommit credential-helper $@'
git config --global credential.UseHttpPath true
git push origin  live-hack-public:live-hack-public
```

Goto CodeCommit, click on Pipleine and 'Create pipeline'


![snyk-project-entry](/images/codepipline-2.jpg)


Configure your pipeline


![snyk-project-entry](/images/codepipline-3.jpg)

{{% notice tip %}}
You can skip the build stage in this instance
{{% /notice %}}


Once the pipeline is created 'Edit' the pipeline

Add a new 'stage' and 'action' choosing 'Snyk' from the 'Action provider'

![snyk-project-entry](/images/codepipline-4.jpg)

{{% notice tip %}}
You will have to run through the OAuth authentication step to connect Snyk to CodePipeline
{{% /notice %}}
 
Click 'Save' and 'Release Change'

The pipeline with automatically run again.

![snyk-project-entry](/images/codepipline-5.jpg)

Once the run is complete click on 'View in Snyk' to view the repost for the scan.

![snyk-project-entry](/images/codepipline-6.jpg)

This scan will now run on every commit, ensuring that you have a view of any vulnerabilities before you send the project live.



