# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

resource "random_pet" "prefix" {}

resource "azurerm_kubernetes_cluster" "alpha-aks-tf" {
  name                = "alpha-aks-tf"
  location            = var.location
  resource_group_name = var.azurerm_resource_group
  dns_prefix          = "alpha-aks-tf"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_B2s"
    os_disk_size_gb = 30
  }

  #service_principal {
    #client_id     = var.appId
    #client_secret = var.password
  #}

  #role_based_access_control {
   # enabled = true
  #}

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "Testing"
  }
}
