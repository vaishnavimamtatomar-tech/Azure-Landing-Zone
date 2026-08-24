output "nic_names" {
  description = "The names of the created Network Interfaces."
  value       = { for k, v in azurerm_network_interface.nic : k => v.name }
}

output "nic_ids" {
  description = "The IDs of the created Network Interfaces."
  value       = { for k, v in azurerm_network_interface.nic : k => v.id }
}

output "nic_private_ip_addresses" {
  description = "The private IP addresses of the created Network Interfaces."
  value       = { for k, v in azurerm_network_interface.nic : k => v.private_ip_address }
}
