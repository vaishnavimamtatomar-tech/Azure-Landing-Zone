output "resource_groups" {
  description = "Outputs for created Resource Groups."
  value       = module.resource_group.resource_group_names
}


output "virtual_networks" {
  description = "Outputs for created Virtual Networks."
  value       = module.virtual_network.vnet_names
}

output "subnets" {
  description = "Outputs for created Subnets."
  value       = module.subnet.subnet_names
}

output "public_ips" {
  description = "Outputs for created Public IPs."
  value       = module.public_ip.public_ip_names
}

output "network_security_groups" {
  description = "Outputs for created Network Security Groups."
  value       = module.network_security_group.nsg_names
}

output "network_interfaces" {
  description = "Outputs for created Network Interfaces."
  value       = module.network_interface.nic_names
}

output "virtual_machines" {
  description = "Outputs for created Virtual Machines."
  value       = module.virtual_machine.vm_names
}
