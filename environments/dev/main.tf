module "rg" {
  source = "../../modules/azurerm-resource-group"
  rgs    = var.rgs
}

module "aks" {
  depends_on  = [module.rg]
  source      = "../../modules/azurerm-aks"
  aks_details = var.aks_details
}


module "acr" {
  depends_on  = [module.rg]
  source      = "../../modules/azurerm-acr"
  acr_details = var.acr_details
}




module "servers_dbs" {
  depends_on  = [module.rg]
  source      = "../../modules/azurerm-database"
  servers_dbs = var.servers_dbs
}
