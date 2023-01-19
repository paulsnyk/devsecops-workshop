---
title: "Hacking the application"
chapter: true
weight: 63
---

## Proving the application is hackable

The app is a simple ToDo list application which contains some vulnerabilities brought in by open source components.

In this case the type of vulnerability is - Arbitrary Code Execution.

Classed as [CWE 94](https://cwe.mitre.org/data/definitions/94.html) arbitrary code execution vulnerability allows the software to construct all or part of a code segment using externally-influenced input from an upstream component, but it does not neutralize or incorrectly neutralizes special elements that could modify the syntax or behavior of the intended code segment.


goto the exploiits folder


```bash
source tomcat-rce.sh http://{your loadbalancer url}

check
```

Running 'check' uploads a jsp file to the server.
we can view this file by navigating to 

```bash
{your loadbalancer url}/Poc.jsp
```

We can now upload a jsp file that will allow us to run any commands on the server

to do this run

```bash
pwn
```

Then navigating to 

```bash
{your loadbalancer url}/pwn.jsp
```



## Next: Scan with Snyk
In the next section, we will scan the aplication source with Snyk and see if we can fix the vulnerability.

