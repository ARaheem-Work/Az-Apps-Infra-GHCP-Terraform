Create Azure Infrastructure using Terraform templates with the following specifications:

Infrastructure Components:
1. Azure Compute & Application Services
   - App Service (deployed in FrontendSubnet) with dedicated App Service Plan
   - Azure Functions with .NET 9 runtime
   - Azure Service Bus Premium tier

2. Data & Storage Services
   - Azure Cosmos DB with SQL API
   - Azure Storage Account (Gen2) 
   - Azure Key Vault with RBAC access

3. Networking & Security
   - Azure Virtual Network (10.0.0.0/16)
     * FrontendSubnet (10.0.1.0/24)
     * BackendSubnet (10.0.2.0/24)
     * ManagementSubnet (10.0.3.0/24)
     * GatewaySubnet (10.0.255.0/27)
   - Azure Front Door Premium with WAF enabled
     * Enable HTTPS enforcement
     * Configure WAF rules for OWASP 3.2

Network Security Requirements:
- Implement service endpoints for Azure services
- Enable Private Endpoints for Backend services
- Configure NSG rules for subnet isolation
- Implement Azure Private DNS zones for private endpoints

Service Placement:
- App Service must be deployed in FrontendSubnet
- All other services must be deployed in BackendSubnet
- Enable vNet integration for PaaS services where applicable

Resource Naming Convention:
- Follow Azure naming guidelines
- Use environment-based prefixes
- Implement proper tagging for resource organization

Security Configuration:
- Enable diagnostic settings for all resources
- Configure RBAC permissions
- Implement managed identities for service authentication
- Enable soft-delete for Key Vault and Storage Account

Reference Architecture:
https://learn.microsoft.com/azure/architecture/reference-architectures/