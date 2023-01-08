---
title: "Setup CodePipeline Scan"
chapter: false
weight: 71
---

### Introduction

We are going to push a repository to CodeCommit then setup a CodePipeline to run on every commit

### Creating a CodeCommit repository

Goto CodeCommit and create a repository call 'eks-workshop'

Copy the clone URL

<div style="padding-left: 15%;padding-right: 15%">
  <img src="/images/codepipline-1.jpg" />
</div>


Set the local Git repo in the nodejs-goof folder to use your new repo as the remote and push the repo to CodeCommit

```bash
git remote set-url origin {Your Repo URL}
git config --global credential.helper '!aws codecommit credential-helper $@'
git config --global credential.UseHttpPath true
git push origin  live-hack-public:live-hack-public
```

Goto CodeCommit, click on Pipleine and 'Create pipeline'

<div style="padding-left: 15%;padding-right: 15%">
  <img src="/images/codepipline-2.jpg" />
</div>


Configure your pipeline

<div style="padding-left: 15%;padding-right: 15%">
  <img src="/images/codepipline-3.jpg" />
</div>

{{% notice tip %}}
You can skip the build stage in this instance
{{% /notice %}}


Once the pipeline is created 'Edit' the pipeline

Add a new 'stage' and 'action' choosing 'Snyk' from the 'Action provider'

<div style="padding-left: 15%;padding-right: 15%">
  <img src="/images/codepipline-4.jpg" />
</div>

{{% notice tip %}}
You will have to run through the OAuth authentication step to connect Snyk to CodePipeline
{{% /notice %}}
 
Click 'Save' and 'Release Change'

The pipeline with automatically run again.

<div style="padding-left: 15%;padding-right: 15%">
  <img src="/images/codepipline-5.jpg" />
</div>

Once the run is complete click on 'View in Snyk' to view the repost for the scan.

<div style="padding-left: 15%;padding-right: 15%">
  <img src="/images/codepipline-6.jpg" />
</div>

This scan will now run on every commit, ensuring that you have a view of any vulnerabilities before you send the project live.



