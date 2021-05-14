
variable "zerotier_networks" {
  default = {
    hello = {
      description = "Hello Zerotier Networks!"
      subnets     = ["192.168.1.0/24"]
      flow_rules  = "accept;"
    }
  }
}

module "this" {
  for_each    = var.zerotier_networks
  source      = "../../"
  name        = each.key
  description = each.value.description
  subnets     = each.value.subnets
  flow_rules  = each.value.flow_rules
}
