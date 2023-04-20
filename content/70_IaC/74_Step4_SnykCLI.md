---
title: "Snyk CLI"
chapter: true
weight: 74
---
## Step 4 Test using the Snyk CLI - AWS CloudFormation files

_Note: Please ensure you have the latest version of the Snyk CLI installed a version equal to or greater than the version below. https://docs.snyk.io/features/snyk-cli/install-the-snyk-cli_

```bash
$ snyk --version
1.675.0
```

Snyk tests and monitors CloudFormation files from source code repositories. It gives advice on how to better secure cloud environments by catching misconfigurations before they are pushed to production along with assistance on how best to fix them

* Run the following IaC scan of any files inside the folder "**CloudFormation**". This will pick up all the IaC config files which exist in this directory in our case we have two files

```bash
$ snyk iac test ./CloudFormation/

Testing fargate-service.yml...


Infrastructure as code issues:
  ✗ S3 block public policy control is disabled [High Severity] [SNYK-CC-TF-96] in S3
    introduced by Resources[CodePipelineArtifactBucket] > Properties > PublicAccessBlockConfiguration > BlockPublicPolicy

  ✗ S3 ignore public ACLs control is disabled [High Severity] [SNYK-CC-TF-97] in S3
    introduced by Resources[CodePipelineArtifactBucket] > Properties > PublicAccessBlockConfiguration > IgnorePublicAcls

  ✗ S3 block public ACLs control is disabled [High Severity] [SNYK-CC-TF-95] in S3
    introduced by Resources[CodePipelineArtifactBucket] > Properties > PublicAccessBlockConfiguration > BlockPublicAcls

  ✗ S3 restrict public bucket control is disabled [High Severity] [SNYK-CC-TF-98] in S3
    introduced by Resources[CodePipelineArtifactBucket] > Properties > PublicAccessBlockConfiguration > RestrictPublicBuckets

  ✗ ECR image scanning is disabled [Low Severity] [SNYK-CC-TF-61] in ECR
    introduced by Resources[EcrDockerRepository] > Properties > ImageScanningConfiguration

  ✗ S3 bucket versioning disabled [Low Severity] [SNYK-CC-TF-124] in S3
    introduced by Resources[CodePipelineArtifactBucket] > Properties > VersioningConfiguration > Status

  ✗ CloudWatch log group not encrypted with managed key [Low Severity] [SNYK-CC-AWS-415] in CloudWatch
    introduced by Resources[LogGroup] > Properties > KmsKeyId

  ✗ ECR repository is not encrypted with customer managed key [Low Severity] [SNYK-CC-AWS-418] in ECR
    introduced by Resources[EcrDockerRepository] > Properties > EncryptionConfiguration > KmsKey

  ✗ ECR Registry allows mutable tags [Low Severity] [SNYK-CC-TF-126] in ECR
    introduced by Resources[EcrDockerRepository] > Properties > ImageTagMutability


Organization:      pas.apicella-41p
Type:              CloudFormation
Target file:       fargate-service.yml
Project name:      CloudFormation
Open source:       no
Project path:      ./CloudFormation/

Tested fargate-service.yml for known issues, found 9 issues

-------------------------------------------------------

Testing vpc.json...


Infrastructure as code issues:
  ✗ Security Group allows open ingress [Medium Severity] [SNYK-CC-TF-1] in VPC
    introduced by Resources > ELBSecurityGroup > Properties > SecurityGroupIngress[0]

  ✗ AWS Security Group allows open egress [Low Severity] [SNYK-CC-TF-73] in VPC
    introduced by Resources[BastionSecurityGroup] > Properties > SecurityGroupEgress[1] > CidrIp

  ✗ Rule allows open egress [Low Severity] [SNYK-CC-TF-72] in VPC
    introduced by Resources[BastionSecurityGroup] > Properties > SecurityGroupEgress[1]

  ✗ AWS Security Group allows open egress [Low Severity] [SNYK-CC-TF-73] in VPC
    introduced by Resources[BastionSecurityGroup] > Properties > SecurityGroupEgress[2] > CidrIp

  ✗ Rule allows open egress [Low Severity] [SNYK-CC-TF-72] in VPC
    introduced by Resources[BastionSecurityGroup] > Properties > SecurityGroupEgress[2]

  ✗ AWS Security Group allows open egress [Low Severity] [SNYK-CC-TF-73] in VPC
    introduced by Resources[DbSecurityGroup] > Properties > SecurityGroupEgress[1] > CidrIp

  ✗ Rule allows open egress [Low Severity] [SNYK-CC-TF-72] in VPC
    introduced by Resources[DbSecurityGroup] > Properties > SecurityGroupEgress[0]

  ✗ AWS Security Group allows open egress [Low Severity] [SNYK-CC-TF-73] in VPC
    introduced by Resources[BastionSecurityGroup] > Properties > SecurityGroupEgress[0] > CidrIp

  ✗ Rule allows open egress [Low Severity] [SNYK-CC-TF-72] in VPC
    introduced by Resources[BastionSecurityGroup] > Properties > SecurityGroupEgress[0]

  ✗ Rule allows open egress [Low Severity] [SNYK-CC-TF-72] in VPC
    introduced by Resources[DbSecurityGroup] > Properties > SecurityGroupEgress[1]

  ✗ AWS Security Group allows open egress [Low Severity] [SNYK-CC-TF-73] in VPC
    introduced by Resources[DbSecurityGroup] > Properties > SecurityGroupEgress[0] > CidrIp


Organization:      pas.apicella-41p
Type:              CloudFormation
Target file:       vpc.json
Project name:      CloudFormation
Open source:       no
Project path:      ./CloudFormation/

Tested vpc.json for known issues, found 11 issues


Tested 2 projects, 2 contained issues.
```

Review the results to get an idea of the types of IaC vulnerabilities that Snyk alerts on.

The next exercise will show how to use the Snyk UI to remediate an IaC issue.

For more information on AWS CloudFormation scanning with Snyk see the following blog post
[Scan for AWS CloudFormation misconfigurations with Snyk IaC](https://snyk.io/blog/scan-aws-cloudformation-misconfigurations-snyk-iac/)