
variable "zerotier_networks" {
  default = {
    overlap_one = {
      description = "Zerotier networks can have multiple subnets"
      subnets     = ["10.1.0.0/16", "10.2.0.0/16"]
      flow_rules  = "accept;"
    }
    overlap_two = {
      description = "Zerotier networks can overlap"
      subnets     = ["10.1.0.0/16", "10.2.0.0/16"]
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
