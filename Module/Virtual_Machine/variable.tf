variable "virtual_machines" {
  type = map(object({
    name                            = string
    resource_group_name             = string
    location                        = string
    size                            = string
    admin_username                  = string
    admin_password                  = string
    disable_password_authentication = bool
    network_interface_ids           = list(string)
    os_disk = object({
      caching              = string
      storage_account_type = string
      disk_size_gb         = optional(number)
    })
    source_image_reference = object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    })
  }))
  description = "Map of Virtual Machines to create."
}

