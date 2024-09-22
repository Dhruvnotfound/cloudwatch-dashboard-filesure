# CloudWatch Dashboard

This repository contains Terraform scripts for creating a CloudWatch dashboard that visualizes metrics for various AWS resources. The dashboard includes visualizations for EC2 instances, S3 buckets, and Lambda functions, allowing users to monitor their AWS infrastructure efficiently.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Usage](#usage)
- [Outputs](#outputs)
- [Contributing](#contributing)
- [License](#license)

## Features

- Create a CloudWatch dashboard with widgets for:
  - EC2 instance metrics (e.g., CPU utilization)
  - S3 bucket metrics (e.g., bucket size and number of objects)
  - Lambda function metrics (e.g., invocations and errors)
- Easily customizable Terraform scripts to suit your needs

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) (v1.0 or higher)
- An AWS account with necessary permissions.

## Setup

1. **Clone the repository:**

   ```bash
   git clone https://github.com/Dhruvnotfound/cloudwatch-dashboard-files.git
   cd cloudwatch-dashboard-files
   ```

2. **Update the variables:**

   You may need to update the Terraform variables in `variables.tf` or any configuration files to match your desired AWS region, instance types, or other settings.

## Usage

1. **Initialize Terraform:**

   ```bash
   terraform init
   ```

2. **Plan the deployment:**

   ```bash
   terraform plan
   ```

3. **Apply the configuration:**

   ```bash
   terraform apply
   ```

   Review the changes Terraform will make and confirm to proceed.

4. **Access the CloudWatch dashboard:**

   After the deployment is complete, navigate to the AWS CloudWatch console to view your dashboard.

## Outputs

After running the Terraform scripts, the following outputs will be available:

- **CloudWatch Dashboard URL**: A direct link to access the CloudWatch dashboard.
- **SNS topic arn**: The ARN of the SNS topic for CloudWatch alarms

## Clean-Up 

If you want to remove the infrastructure run

```bash
terraform destroy
```
 Review the changes Terraform will make and confirm to proceed.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or new features.

---
