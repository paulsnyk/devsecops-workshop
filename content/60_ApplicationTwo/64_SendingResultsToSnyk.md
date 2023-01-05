---
title: "Scanning the app with Snyk"
chapter: true
weight: 64
---

# Scanning the app with Snyk
We do not want to install Java and Maven and start building the Java app on our Cloud9 environment, you may do so if you wish!

Instead we are going to fork the java-goof repository and scan using the Snyk SCM integration 

Using a source code management tool of your choice, fork the repository - https://github.com/schottsfired/java-goof


Head over to the Snyk UI, import and scan the repository.

Open the project for the Dockerfile in todolist-goof

![snyk-project-entry](/images/java-goof-docker-project.jpg)


The scan report for the Dockerfile is displayed in Snyk.

{{% notice tip %}}
Please note we are scanning the Dockerfile here and not a container image.
Snyk can also scan container images either locally or in integrated container registries
{{% /notice %}}


![snyk-project-entry](/images/java-goof-docker-scan.jpg)


We can see from this scan that the base image for the container is out of date and there are better alternatives.

Currently the best minor upgrade is to use tomcat:8.5.81

{{% notice tip %}}
Upgrades are classified as minor when only a minor semantic version is incremented.

We use minor upgrades as these often require less development work to implement and remove the vulnerabilities at the same time
{{% /notice %}}