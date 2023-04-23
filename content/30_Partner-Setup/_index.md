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

## Setting up the Snyk CLI

The Snyk Command-Line-Interface (CLI) is highly portable and very popular with end users.  We’ll use the Snyk CLI in this workshop to collect and send results about your vulnerabilities.

Start by downloading the Snyk CLI to your environment.  In this workshop, we’ll prescribe steps to save time and you can find more details on the Snyk documentation site at:
https://docs.snyk.io/snyk-cli/install-the-snyk-cli

At the Cloud9 prompt, enter these commands to download the binary for Linux and move them to your bin folder (/usr/local/bin):

```
curl https://static.snyk.io/cli/latest/snyk-linux -o snyk
chmod +x ./snyk
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
snyk auth {YOUR_AUTH_TOKEN}.
```

That should be it!  Your response should look like the following:

    snyk auth XXXXXXX-XXXX-XXXX-XXXXXXXXXXXXXXXX

Your account has been authenticated. Snyk is now ready to be used.


### Next Section: Running with Snyk
Great, you have created and safely stored your newly created Snyk access token, Now, let’s create the Terraform Cloud access token.
