variable "network_security_groups" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    subnet_key          = string
    subnet_id           = optional(string)
  }))
  description = "Map of Network Security Groups to create."
}



