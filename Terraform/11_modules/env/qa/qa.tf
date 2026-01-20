module "qa" {
  source        = "../../aks"
  rg_name       = "QARG"
  rg_location   = "centralus"
  acr_name      = "nextopsqaacrt31"
  acr_sku       = "Standard"
  aks_name      = "nextopsqaakst31"
  node_count    = 1
  env           = "qa"
}