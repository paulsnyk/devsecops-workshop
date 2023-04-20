---
title: "Scanning the app with Snyk"
chapter: true
weight: 54
---

# Scanning the app with Snyk
Either using the Snyk CLI lets send our results to the Snyk Web UI to look for open source libraries that could be causing the problem we observed.


At your command prompt, ensure you are authorized with Snyk by issuing the command below.  In the setup steps, you were asked to get the API_TOKEN from snyk.io.  See the [Snyk setup page for those instructions.]({{<ref "30_Partner-Setup/_index.md" >}})

```bash
snyk auth
```

Once you are authorized, we'll run the 'monitor' command.

```bash
snyk monitor
```

Snyk will scan the application and post the vulnerability results to the web UI

<div style="padding-left: 10%;padding-right: 10%">
  <img src="/images/monitor.jpg" />
</div>

Copy-and-paste the link, or click through the link if your CLI supports it.  When you navigate to Snyk you'll arrive at a list of projects for your organization.  If this is your first time using Snyk, you will only see one project entry.  If you are an existing user, you will see the name of your project .

Filter the report to just look for 'directory traversal' vulnerabilities

<div style="padding-left: 10%;padding-right: 10%">
  <img src="/images/snykreport1.jpg" />
</div>

The vulnerability we want to fix is introduced by 'st@0.2.4' and we can see from the information in Snyk that this can be fixed by upding this package.

<div style="padding-left: 10%;padding-right: 10%">
  <img src="/images/snykreport2.jpg" />
</div> 