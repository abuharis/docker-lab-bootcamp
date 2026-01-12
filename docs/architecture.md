📋 Prerequisites

Before using this repository, ensure the following requirements are met.

1️⃣ AWS Account

An active AWS account

Permission to create and manage:

EC2 instances

EC2 key pairs

This project uses:

Default VPC

Default subnet

Default security group

No custom networking configuration is required.

2️⃣ AWS Credentials

Create an IAM user or role with sufficient permissions and store the credentials as GitHub Secrets:

AWS_ACCESS_KEY_ID

AWS_SECRET_ACCESS_KEY

AWS_REGION (e.g., us-east-1)

3️⃣ SSH Key Pair

An SSH key pair is required to access the EC2 instance.

Generate the key locally:
```bash
ssh-keygen -t ed25519 -f docker-lab-key
```

Private key (docker-lab-key)

Stored securely as a GitHub Secret:

EC2_SSH_PRIVATE_KEY

Public key (docker-lab-key.pub)

Automatically uploaded to AWS by GitHub Actions

4️⃣ GitHub Repository Secrets

The following secrets must be configured in the GitHub repository:

Secret Name	Description
AWS_ACCESS_KEY_ID	AWS access key
AWS_SECRET_ACCESS_KEY	AWS secret key
AWS_REGION	AWS region
EC2_KEY_NAME	EC2 key pair name (e.g., docker-lab-key)
EC2_SSH_PRIVATE_KEY	SSH private key contents
SECURITY_GROUP_ID	AWS Security Group ID
SUBNET_ID	AWS Subnet ID

