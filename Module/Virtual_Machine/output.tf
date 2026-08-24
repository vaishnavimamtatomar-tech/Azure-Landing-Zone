output "vm_names" {
  description = "The names of the created Virtual Machines."
  value       = { for k, v in azurerm_linux_virtual_machine.vm : k => v.name }
}

output "vm_ids" {
  description = "The IDs of the created Virtual Machines."
  value       = { for k, v in azurerm_linux_virtual_machine.vm : k => v.id }
}

output "vm_private_ip_addresses" {
  description = "The private IP addresses of the created Virtual Machines."
  value       = { for k, v in azurerm_linux_virtual_machine.vm : k => v.private_ip_address }
}
