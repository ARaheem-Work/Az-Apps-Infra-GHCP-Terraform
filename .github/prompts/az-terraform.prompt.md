# Azure Terraform Infrastructure as Code template generator template

## Objective
This prompt file is designed to help GitHub Copilot generate structured Azure Terraform templates efficiently, following best practices for cloud resources deployment.

## Instructions for Copilot
- Use **Azure Terraform** best practices.
- Ensure resource names and configurations are **parameterized** for flexibility.
- Include **recommended properties** for each resource.
- Follow **Azure security and compliance guidelines**.
- Use **latest API versions** where applicable.
- Use eastUS2 as the location
- Keep all files in top level tf-infra folder. 
- Use main file to reference all modules.
- Split Azure resources into seperate module files.
- Use instructions for generating azure resource naming conventions and tagging guidelines.
- Create a seperate input parameter file for deploying azure resources.
- Add Azure Resource ID output to the corresponding module files.
- Validate terraform files Locally for syntax and formatting.
- Donot stop or interrupt me for any input, except deployment to azure.
- Create a README.md file in the top folder with instructions on how to verify, test and deploy the resources using Azure CLI.

    

 

## Prompts

### **Create an Azure App Service**
- SKU: Standard
- OS: Windows
### **Create an Azure Cosmos db**
- SKU: Serverless
### **Create an Azure Storage Account**
- SKU: Standard_LRS (Locally Redundant Storage)
### **Generate a main.tf file to orchestrate and deploy all the modules

