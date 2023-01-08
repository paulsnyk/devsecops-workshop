---
title: "Hacking the application"
chapter: true
weight: 53
---

## Proving the application is hackable

The app is a simple ToDo list application which contains some vulnerabilities brought in by open source components.

In this case the type of vulnerability is - Directory or Path traversal.

Classed as [CWE 22](https://cwe.mitre.org/data/definitions/22.html) a Directory or Path traversal vulnerability allows use of external input to construct a pathname that is intended to identify a file or directory that is located underneath a restricted parent directory, but the software does not properly neutralize special elements within the pathname that can cause the pathname to resolve to a location that is outside of the restricted directory.

Before you read on try a few ways to hack the application so that you can see the file listing outside of the public directoy!

<div style="padding-left: 10%;padding-right: 10%">
  <img src="/images/hack.jpg" />
</div>

## Next: Scan with Snyk
In the next section, we will scan the aplication source with Snyk and see if we can fix the vulnerability.

