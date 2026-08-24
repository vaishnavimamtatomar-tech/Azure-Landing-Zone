output "vnet_names" {
  description = "The names of the created Virtual Networks."
  value       = { for k, v in azurerm_virtual_network.vnet : k => v.name }
}

output "vnet_ids" {
  description = "The IDs of the created Virtual Networks."
  value       = { for k, v in azurerm_virtual_network.vnet : k => v.id }
}
