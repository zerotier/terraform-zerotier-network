variable "zerotier_networks" {
  default = {
    hello = {
      description = "Hello Zerotier Networks!"
      subnets     = ["192.168.1.0/24"]
      flow_rules  = "accept;"
    }
  }
}
