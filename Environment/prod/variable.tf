variable "resource_groups" {
  type        = map(any)
  description = "Map of Resource Groups to create."
}


variable "virtual_networks" {
  type        = map(any)
  description = "Map of Virtual Networks to create."
}

variable "subnets" {
  type        = map(any)
  description = "Map of Subnets to create."
}

variable "public_ips" {
  type        = map(any)
  description = "Map of Public IPs to create."
}

variable "network_security_groups" {
  type        = map(any)
  description = "Map of Network Security Groups to create."
}

variable "network_interfaces" {
  type        = map(any)
  description = "Map of Network Interfaces to create."
}

variable "virtual_machines" {
  type        = map(any)
  description = "Map of Virtual Machines to create."
}

