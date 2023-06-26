variable "prefix" {
  default = "alpha"
}

variable "azurerm_resource_group" {
  default = "alpha-kumar-rg"
}

variable "location" {
  default = "East US"
}

# @identity - (Optional) An identity block as defined below. One of either identity or service_principal must be specified.

#variable "appId" {
 # description = "Azure Kubernetes Service Cluster service principal"
  #default = " "
#}

#variable "password" {
  #description = "Azure Kubernetes Service Cluster password"
  #default = ""
#}