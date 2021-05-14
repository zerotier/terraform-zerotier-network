locals {
  assignment_pools = flatten([
    for subnet in var.subnets : [{
      start = cidrhost(subnet, min(range(32 - split("/", subnet)[1])...))
      end   = cidrhost(subnet, max(range(32 - split("/", subnet)[1])...))
    }]
  ])
}

locals {
  routes = var.routes
}

locals {
  subnet_routes = flatten([
    for subnet in var.subnets : [{
      target = subnet
      via    = null
    }]
  ])
}

resource "zerotier_network" "this" {
  name             = var.name
  assign_ipv4      = var.assign_ipv4
  assign_ipv6      = var.assign_ipv6
  description      = var.description
  enable_broadcast = var.enable_broadcast
  flow_rules       = var.flow_rules
  mtu              = var.mtu
  multicast_limit  = var.multicast_limit
  private          = var.private

  dynamic "assignment_pool" {
    for_each = local.assignment_pools
    content {
      start = assignment_pool.value.start
      end   = assignment_pool.value.end
    }
  }

  dynamic "route" {
    for_each = flatten(concat(local.routes, local.subnet_routes))
    content {
      target = route.value.target
      via    = route.value.via
    }
  }
}
