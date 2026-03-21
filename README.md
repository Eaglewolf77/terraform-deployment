# Cloud Infrastructure Automation (Terraform)

This repository contains Terraform configurations used to deploy a complete Azure environment using Infrastructure as Code (IaC) and automated CI/CD pipelines in GitHub Actions.

The project is part of a comparison between Terraform and Bicep, focusing on performance, workflow efficiency, and infrastructure lifecycle management.

---

## Architecture

The following resources are provisioned in Azure:

- Resource Group
- Virtual Network with subnets
- Linux Jumpbox VM
- Linux Web Frontend VM
- Azure Load Balancer
- Azure Key Vault
- Azure Automation Account
- Network Security Groups (NSG)

---

## CI/CD & Automation

- Fully automated deployments using GitHub Actions
- Infrastructure lifecycle managed via:
  - `terraform init`
  - `terraform plan`
  - `terraform apply`
  - `terraform destroy`
- Secure authentication using Azure Service Principal
- Secrets managed in Azure Key Vault

---

## Benchmarking Approach

- Performed multiple deployment and teardown cycles (10 runs)
- Used identical infrastructure for Terraform and Bicep
- Extracted execution timing from GitHub Actions using GitHub CLI (`gh`)
- Compared performance and workflow efficiency across IaC tools

## Benchmark Results

Results are available in the workflow logs:
https://github.com/Eaglewolf77/terraform-deployment/actions
---

## Prerequisites

- Azure Subscription
- Service Principal with Contributor role
- GitHub Actions secrets:
  - `AZURE_CLIENT_ID`
  - `AZURE_CLIENT_SECRET`
  - `AZURE_SUBSCRIPTION_ID`
  - `AZURE_TENANT_ID`

---

## Usage

```bash
terraform init
terraform plan
terraform apply
terraform destroy
```

Technologies
Terraform
Microsoft Azure
GitHub Actions
GitHub CLI (gh)
Azure CLI (az)
Azure Key Vault

License

MIT License – see LICENSE file.

