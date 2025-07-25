# Generated by GH Copilot

resource "azurerm_service_plan" "app_service_plan" {
  name                = var.app_service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Windows"
  sku_name            = "S1"
  tags                = var.tags
}

resource "azurerm_windows_web_app" "app_service" {
  name                = var.app_service_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.app_service_plan.id
  tags                = var.tags  site_config {
    application_stack {
      current_stack  = "dotnet"
      dotnet_version = "v6.0"
    }
    always_on        = true
    ftps_state       = "Disabled"
    http2_enabled    = true
    minimum_tls_version = "1.2"
  }

  https_only = true

  identity {
    type = "SystemAssigned"
  }

  logs {
    detailed_error_messages = true
    failed_request_tracing  = true
    
    application_logs {
      file_system_level = "Information"
    }
    
    http_logs {
      file_system {
        retention_in_days = 7
        retention_in_mb   = 35
      }
    }
  }
}
