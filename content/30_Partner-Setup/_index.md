---
title: "Snyk Setup" # MODIFY THIS TITLE IF APPLICABLE
chapter: true
weight: 30
---

# Snyk Setup Instructions
You will need a Snyk account to run scans.  Snyk is available for free and all you need is a valid email address to register.  Once you register, you can perform scans and view results locally or on the website.

## Setting up your Snyk Account

### I do not have a Snyk account
[You can register for a FREE account here.](https://app.snyk.io/signup)

### I already have a Snyk account
[Log in to your account here.](https://app.snyk.io/signup)

### Create Snyk Access Token
- Visit your Snyk account (Account Settings > Service Accounts) (https://app.snyk.io/org/webapp-xyz/manage/service-accounts)
- Create a new Service Account and of role 'Org Admin'
- Paste the token that appears on the screen in a safe location


{{% notice warning %}}
<p style='text-align: left;'>
Your Snyk API token must be protected and not shared with unauthorized parties to prevent exposure and unauthorized access.
</p>
{{% /notice %}}

You can read more about Snyk API Tokens from the docs here.

## Setting up the Snyk CLI

The Snyk Command-Line-Interface (CLI) is highly portable and very popular with end users.  We’ll use the Snyk CLI in this workshop to collect and send results about your vulnerabilities.

Start by downloading the Snyk CLI to your environment.  In this workshop, we’ll prescribe steps to save time and you can find more details on the Snyk documentation site at:
https://docs.snyk.io/snyk-cli/install-the-snyk-cli

At the Cloud9 prompt, enter these commands to download the binary for Linux and move them to your bin folder (/usr/local/bin):

```
curl https://static.snyk.io/cli/latest/snyk-linux -o snyk
chmod +x ./snyk
mv ./snyk /usr/local/bin/
```

Next, authenticate with Snyk by typing in the command below:

```
snyk auth {YOUR_API_TOKEN}.
```

That should be it!  Your response should look like the following:

    snyk auth 12345678-abcd-efgh-1234head5678bead

    Your account has been authenticated. Snyk is now ready to be used.


### Next Section: Running with Snyk
Great, you have created and safely stored your newly created Snyk access token, Now, let’s create the Terraform Cloud access token.
