
# CloudAppInfra – Scalable Infrastructure for Dockerized Web Apps (AWS, Terraform, CloudWatch)

This project simulates a **production-grade infrastructure deployment** for a cloud-native web application, built entirely with **Terraform**, **Docker**, and **AWS services**. It's designed to reflect the kind of projects and architecture used by real-world companies where secure, scalable, and observable infrastructure is mission-critical.

---

## Key Features

- **Infrastructure as Code (IaC)** using Terraform
- **Custom VPC** with public subnet and security groups
- **EC2 Instance** bootstrapped with `user_data` to install Docker and run a Flask app
- **IAM Role** with least-privilege permissions for CloudWatch
- **CloudWatch Alarms** for CPU utilization and auto-scaling readiness
- **Outputs** with public IP and instance ID
- **Free Tier-safe** deployment (single t2.micro instance)

---

## Architecture Overview

- A Flask web app is containerized and deployed on an EC2 instance
- Terraform provisions the entire stack including:
  - VPC, subnet, Internet Gateway, Route Tables
  - IAM roles, security groups
  - CloudWatch alarms and log agents
- Bootstrap script installs Docker and runs the app
- Prepared for CI/CD automation and RDS/MySQL integration

---

## Use Case Simulation

This mirrors the kind of stack you might find in:

- **API-based backend apps** (chat, forms, routing engines)
- **Call logging dashboards** with centralized metrics and uptime monitoring
- **Compliance-sensitive environments** with IAM, VPC isolation, and CloudWatch

---

## Repository Structure

```
cloud-app-infra/
├── infra/                # Terraform IaC
│   ├── main.tf           # VPC, EC2, IAM, monitoring
│   ├── variables.tf      # Input parameters
│   ├── outputs.tf        # Export public IP, instance ID
│   └── providers.tf      # AWS provider config
├── app/                  # Flask app source
│   ├── Dockerfile
│   ├── main.py
│   └── requirements.txt
├── scripts/              # EC2 bootstrap script
│   └── bootstrap.sh
├── chef/                 # Configuration mgmt simulation (optional)
├── ci/                   # GitHub Actions CI/CD workflow
├── docs/                 # Architecture diagrams, documentation
└── README.md
```

---

## How to Use

1. Update `variables.tf` with your key pair name
2. Run:
```bash
terraform init
terraform plan
terraform apply
```
3. Visit your public EC2 IP on port 5000

---

## What You'll Learn

- How real cloud infrastructure is defined and deployed
- How to configure observability, logging, and alerting with CloudWatch
- How to automate Docker deployment via EC2 `user_data`
- How to simulate what companies like Inktel deploy every day

---

## Author

**Mohamed Baker**  
DevOps & Cloud Engineering Portfolio  
[LinkedIn] | [GitHub] | moebaker954@gmail.com
