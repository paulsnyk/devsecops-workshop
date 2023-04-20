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

Build the project locally

```bash
npm install
```

Scan the code locally

```
snyk test
```

The Snyk results show vulnerabilities and license compliance issues found in the project being scanned

<div style="padding-left: 10%;padding-right: 10%">
  <img src="/images/snykscan.jpg" />
</div>
