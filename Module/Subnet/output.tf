output "subnet_names" {
  description = "The names of the created Subnets."
  value       = { for k, v in azurerm_subnet.subnet : k => v.name }
}

output "subnet_ids" {
  description = "The IDs of the created Subnets."
  value       = { for k, v in azurerm_subnet.subnet : k => v.id }
}
