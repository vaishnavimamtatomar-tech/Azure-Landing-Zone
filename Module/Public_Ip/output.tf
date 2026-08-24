output "public_ip_names" {
  description = "The names of the created Public IPs."
  value       = { for k, v in azurerm_public_ip.pip : k => v.name }
}

output "public_ip_ids" {
  description = "The IDs of the created Public IPs."
  value       = { for k, v in azurerm_public_ip.pip : k => v.id }
}

output "public_ip_addresses" {
  description = "The IP address values of the created Public IPs."
  value       = { for k, v in azurerm_public_ip.pip : k => v.ip_address }
}
