output "nsg_names" {
  description = "The names of the created Network Security Groups."
  value       = { for k, v in azurerm_network_security_group.nsg : k => v.name }
}

output "nsg_ids" {
  description = "The IDs of the created Network Security Groups."
  value       = { for k, v in azurerm_network_security_group.nsg : k => v.id }
}
