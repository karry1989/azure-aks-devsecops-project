output "resource_group_name" {
  description = "Azure Resource Group Name"
  value       = module.resource_group.name
}

output "resource_group_location" {
  description = "Azure Resource Group Location"
  value       = module.resource_group.location
}

output "vnet_name" {
  description = "Azure Virtual Network Name"
  value       = module.network.vnet_name
}

output "vnet_id" {
  description = "Azure Virtual Network ID"
  value       = module.network.vnet_id
}

output "aks_subnet_name" {
  description = "AKS Subnet Name"
  value       = module.network.aks_subnet_name
}

output "aks_subnet_id" {
  description = "AKS Subnet ID"
  value       = module.network.aks_subnet_id
}

output "acr_name" {
  description = "Azure Container Registry name"
  value       = module.acr.name
}

output "acr_login_server" {
  description = "Azure Container Registry login server"
  value       = module.acr.login_server
}

output "acr_id" {
  description = "Azure Container Registry ID"
  value       = module.acr.id
}

output "aks_name" {
  description = "AKS cluster name"
  value       = module.aks.name
}

output "aks_id" {
  description = "AKS cluster ID"
  value       = module.aks.id
}

output "aks_kubelet_identity_object_id" {
  description = "AKS kubelet identity object ID"
  value       = module.aks.kubelet_identity_object_id
}