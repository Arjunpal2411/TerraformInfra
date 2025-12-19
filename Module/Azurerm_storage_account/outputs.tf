output "storage_account_id" {
  description = "Map of storage account keys to their resource ids"
  value       = { for k, s in azurerm_storage_account.apstg : k => s.id }
}
