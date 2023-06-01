---
title: "Snyk Setup" # MODIFY THIS TITLE IF APPLICABLE
chapter: true
weight: 30
---

# Snyk Setup Instructions
A Snyk account necessary to proceed with this workshop. Snyk is free forever, meaning you can continue using it after completing this workshop. Accounts on the free tier have a limited number of security scans, but it's sufficient for this workshop and potentially sufficient for long-term use by a single developer or small team.

## Setting up your Snyk Account

### I do not have a Snyk account
[You can register for a FREE account here.](https://app.snyk.io/signup)

### I already have a Snyk account
[Log in to your account here.](https://app.snyk.io/signup)

### Create Service Account Token
- Click on your username, then navigate to **Account Settings** then **Service Accounts**
  - Your URL should look similar to: https://app.snyk.io/org/my-org-id/manage/service-accounts
- Create a new Service Account using the **Org Admin** role
- Copy and paste the token that appears on the screen to a safe location

{{% notice tip %}}
<p style='text-align: left;'>
Protect your Snyk API token and don't share it with unauthorized parties. This prevents exposure and unauthorized access.
</p>
{{% /notice %}}

You can read more about Snyk service accounts from the docs [here](https://docs.snyk.io/enterprise-setup/service-accounts).

## Setting up the Snyk CLI

The Snyk command-line interface (CLI) is highly portable and very popular with end users.  We’ll use the Snyk CLI in this workshop to collect and analyze results about your vulnerabilities.

Start by downloading the Snyk CLI to your environment. In this workshop, we’ll prescribe steps to save time, but you can find more details on the Snyk CLI documentation site [here](https://docs.snyk.io/snyk-cli/install-the-snyk-cli).

In your Cloud9 terminal, copy and paste this command to install the Snyk CLI:

```bash
curl https://static.snyk.io/cli/latest/snyk-linux -o snyk && \
chmod +x ./snyk && \
sudo mv ./snyk /usr/local/bin/
```

Fetch your user Auth Token from the Snyk UI

<div style="padding-left: 10%;padding-right: 10%">
  <img src="/images/user_settings.jpg" />
</div>

<div style="padding-left: 10%;padding-right: 10%">
  <img src="/images/user_settings2.jpg" />
</div>

Next, authenticate with Snyk by typing in the command below:

```bash
snyk auth <YOUR_AUTH_TOKEN>
```

That's it! The output from this command should look similar to the following:

```bash
Your account has been authenticated. Snyk is now ready to be used.
```

### Next Section: Module 1
You have installed the Snyk CLI into your Cloud9 IDE environment. Let's proceed to Module 1, where we deploy a vulnerable application, hack into it, scan it with Snyk, and fix security vulnerabilities.
