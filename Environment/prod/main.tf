module "resource_group" {
  source          = "../../Module/Resource_Group"
  resource_groups = var.resource_groups
}

module "virtual_network" {
  source           = "../../Module/Virtual_Network"
  virtual_networks = var.virtual_networks

  depends_on = [module.resource_group]
}

module "subnet" {
  source  = "../../Module/Subnet"
  subnets = var.subnets

  depends_on = [module.virtual_network, module.resource_group]
}

module "public_ip" {
  source     = "../../Module/Public_Ip"
  public_ips = var.public_ips

  depends_on = [module.resource_group]
}

module "network_security_group" {
  source                  = "../../Module/Network_Security_Group"
  network_security_groups = local.network_security_groups_resolved

  depends_on = [module.resource_group, module.subnet]
}

locals {
  network_interfaces_resolved = {
    for k, v in var.network_interfaces : k => merge(v, {
      subnet_id = module.subnet.subnet_ids[v.subnet_key]
    })
  }

  network_security_groups_resolved = {
    for k, v in var.network_security_groups : k => merge(v, {
      subnet_id = module.subnet.subnet_ids[v.subnet_key]
    })
  }

  virtual_machines_resolved = {
    for k, v in var.virtual_machines : k => merge(v, {
      network_interface_ids = [for nic_key in v.nic_keys : module.network_interface.nic_ids[nic_key]]
    })
  }
}

module "network_interface" {
  source             = "../../Module/Network_Interface"
  network_interfaces = local.network_interfaces_resolved

  depends_on = [module.subnet, module.public_ip]
}

module "virtual_machine" {
  source           = "../../Module/Virtual_Machine"
  virtual_machines = local.virtual_machines_resolved

  depends_on = [module.network_interface]
}

