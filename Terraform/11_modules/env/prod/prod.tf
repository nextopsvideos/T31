module "prod" {
  source        = "../../aks"
  rg_name       = "ProdRG"
  rg_location   = "westus"
  acr_name      = "nextopsprdacrt31"
  acr_sku       = "Premium"
  aks_name      = "nextopsprdakst31"
  node_count    = 1
  env           = "prod"
}