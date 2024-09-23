resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  https_traffic_only_enabled      = true
  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public

  # Optional parameters
  account_kind                  = var.storage_account_kind
  access_tier                   = var.access_tier
  edge_zone                     = var.edge_zone
  shared_access_key_enabled     = var.shared_access_key_enabled
  is_hns_enabled                = var.is_hns_enabled
  nfsv3_enabled                 = var.nfsv3_enabled
  public_network_access_enabled = var.public_network_access_enabled
  network_rules {
    bypass         = var.bypass_network_rules ? null : ["Metrics", "AzureServices", "Logging"]
    default_action = var.bypass_network_rules ? "Allow" : "Deny"
  }
}