variable "zerotier_networks" {
  default = {
    setting_dns = {
      description = "Hello Zerotier!"
      subnets     = ["10.9.76.0/24"]
      flow_rules  = "accept;"
      dns = {
        domain = "example.com"
        servers = [
          "10.10.10.1",
          "10.10.10.2"
        ]
      }
    }
  }
}
