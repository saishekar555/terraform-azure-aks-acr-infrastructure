# Enterprise Terraform AKS Infrastructure on Azure

## Project Overview

This project demonstrates provisioning and managing Azure infrastructure using Terraform with an enterprise-grade structure.

The infrastructure includes:

* Azure Resource Group
* Azure Virtual Network (VNet)
* Azure Subnet
* Azure Container Registry (ACR)
* Azure Kubernetes Service (AKS)
* Remote Terraform State Backend
* Terraform Modules
* Terraform Workspaces
* Environment-Based Deployment Structure

---

## Architecture

Terraform
↓
Resource Group
↓
Virtual Network
↓
Subnet
↓
Azure Container Registry (ACR)
↓
Azure Kubernetes Service (AKS)

Remote Backend
↓
Azure Storage Account
↓
Blob Container

---

## Technologies Used

* Terraform
* Microsoft Azure
* Azure Kubernetes Service (AKS)
* Azure Container Registry (ACR)
* Azure Storage Account
* Azure Virtual Network
* Git
* GitHub

---

## Project Structure

```text
terraform-aks-project/
│
├── modules/
│   ├── rg/
│   ├── network/
│   ├── acr/
│   └── aks/
│
├── environments/
│   └── dev/
│
├── backend.tf
├── backend-config.tf
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md
```

## Terraform Modules Implemented

### Resource Group Module

Creates Azure Resource Groups.

### Network Module

Creates:

* Virtual Network
* Subnet

### ACR Module

Creates:

* Azure Container Registry

### AKS Module

Creates:

* Azure Kubernetes Service Cluster
* System Assigned Managed Identity

---

## Remote Backend Configuration

Terraform state is stored securely in Azure Storage Account.

Benefits:

* Centralized state management
* Team collaboration
* State locking
* State protection

---

## Terraform Workspaces

Implemented multiple workspaces:

```bash
terraform workspace new dev
terraform workspace new test
```

Used for environment isolation.

---

## Terraform State Migration

Migrated existing infrastructure into modules using:

```bash
terraform state mv
```

Examples:

```bash
terraform state mv azurerm_resource_group.rg module.resource_group.azurerm_resource_group.rg

terraform state mv azurerm_virtual_network.vnet module.network.azurerm_virtual_network.vnet

terraform state mv azurerm_subnet.subnet module.network.azurerm_subnet.subnet

terraform state mv azurerm_container_registry.acr module.acr.azurerm_container_registry.acr

terraform state mv azurerm_kubernetes_cluster.aks module.aks.azurerm_kubernetes_cluster.aks
```

---

## Key Terraform Commands

Initialize:

```bash
terraform init
```

Validate:

```bash
terraform validate
```

Format:

```bash
terraform fmt
```

Plan:

```bash
terraform plan
```

Apply:

```bash
terraform apply
```

Destroy:

```bash
terraform destroy
```

---

## Skills Demonstrated

* Infrastructure as Code (IaC)
* Terraform Modules
* Terraform State Management
* Remote Backend Configuration
* Azure AKS Deployment
* Azure ACR Deployment
* Azure Networking
* Terraform Workspaces
* Git Version Control
* Enterprise Terraform Design

---

## Future Enhancements

* AKS Custom Subnet Integration
* Terraform Variable Files per Environment
* Azure Key Vault Integration
* Monitoring with Prometheus & Grafana
* CI/CD using Azure DevOps Pipelines
* GitOps using ArgoCD

---

## Author

Dammoju Sai Shekar Chary

Azure DevOps Engineer

GitHub: https://github.com/saishekar555

LinkedIn: https://linkedin.com/in/saishekar555
