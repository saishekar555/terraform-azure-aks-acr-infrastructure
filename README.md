# Enterprise Terraform AKS Infrastructure on Azure

## Project Overview

This project demonstrates an enterprise-grade Infrastructure as Code (IaC) implementation using Terraform on Microsoft Azure.

The infrastructure is built using reusable Terraform modules and follows production-style DevOps practices including remote state management, state locking, environment separation, and modular architecture.

---

## Architecture

GitHub
   │
   ▼
Terraform
   │
   ▼
Resource Group
   │
   ├── Virtual Network
   │       └── Subnet
   │
   ├── Azure Container Registry
   │
   └── Azure Kubernetes Service

---

## Technologies Used

- Terraform
- Microsoft Azure
- Azure Kubernetes Service (AKS)
- Azure Container Registry (ACR)
- Azure Storage Account
- Azure Virtual Network
- GitHub

---

## Project Structure

terraform-aks-project

├── environments

│   └── dev

├── modules

│   ├── rg

│   ├── network

│   ├── acr

│   └── aks

├── backend.tf

├── variables.tf

├── outputs.tf

└── README.md

---

## Features

- Reusable Terraform Modules
- Azure Remote Backend
- State Locking
- AKS Provisioning
- ACR Provisioning
- Network Provisioning
- Environment-Based Deployment Structure
- Terraform Workspace Support
- Infrastructure Refactoring using terraform state mv

---

## Key Learning Outcomes

- Terraform Modules
- Terraform State Management
- Azure Infrastructure Automation
- Remote Backend Configuration
- State Locking
- Terraform Workspaces
- AKS Deployment
- Azure Networking
- Infrastructure Refactoring

---

## Author

Dammoju Sai Shekar Chary

GitHub: https://github.com/saishekar555

LinkedIn: https://linkedin.com/in/saishekar555