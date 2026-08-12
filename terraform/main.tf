module "resource_group" {
  source = "./modules/resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location
}

moved {
  from = azurerm_resource_group.production
  to   = module.resource_group.azurerm_resource_group.this
}

module "network" {
  source = "./modules/network"

  resource_group_name = module.resource_group.name
  location            = module.resource_group.location

  vnet_name                   = "vnet-devsecops"
  vnet_address_space          = ["10.10.0.0/16"]
  aks_subnet_name             = "aks-subnet"
  aks_subnet_address_prefixes = ["10.10.1.0/24"]
}

module "acr" {
  source = "./modules/acr"

  resource_group_name = module.resource_group.name
  location            = module.resource_group.location

  acr_name = "acrkarthikdevops17"
  sku      = "Basic"
}

module "aks" {
  source = "./modules/aks"

  resource_group_name = module.resource_group.name
  location            = module.resource_group.location

  cluster_name = "aks-devsecops"
  dns_prefix   = "aks-devsecops"

  subnet_id = module.network.aks_subnet_id

  node_count = 1
  vm_size    = "Standard_D2s_v3"
}