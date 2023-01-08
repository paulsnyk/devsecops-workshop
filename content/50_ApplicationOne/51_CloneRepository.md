---
title: "Clone the repository"
chapter: true
weight: 51
---

## Clone the repository

We will utilize a repository with a misconfigured EC2 instance.  This is a representative use case to highlight how well-intended IaC project can have issues.  This is a fast example we'll use as we iterate through more than one issue.

We'll make changes to your local checkout, but not commit.  This process mirrors what developers would do at their computer prior to checking in their code.

Let's start by cloning a fresh copy of this public repository from GitHub.  In your working environment, run these commands to start from your home directory and perform a clone of the repository:

```bash
git clone https://github.com/schottsfired/nodejs-goof
cd nodejs-goof
git checkout live-hack-public
```

{{% notice info %}}
Note: If you have an existing Snyk account with more than one organization, and you wish to use a non-default org, you can set this.  Find your org ID (ORG_ID below) and it with the command below.Your desired ORG_ID should be a 32 character UUID unique to you.
{{% /notice %}}

```
curl https://static.snyk.io/cli/latest/snyk-linux -o snyk
chmod +x ./snyk
sudo mv ./snyk /usr/local/bin/
```

Head over to the Snyk UI and create a service account named 'snyk CLI'

Authenticate the Snyk CLI with the below command

```
snyk auth {API Key}
```

Navigate into the nodejs-goof folder and run a Snyk test to check all is working.

```
cd nodejs-goof
snyk test
```

<div style="padding-left: 10%;padding-right: 10%">
  <img src="/images/snykscan.jpg" />
</div>
