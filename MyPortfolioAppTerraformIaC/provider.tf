# Defining the provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.56.0"
    }
  }
}

provider "azurerm" {
  # Configuration options - Azure AD Authorization
  subscription_id = file("./keys/subscription_id")
  tenant_id       = file("./keys/tenant_id")
  client_id       = file("./keys/client_id")
  client_secret   = file("./keys/client_secret")
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
