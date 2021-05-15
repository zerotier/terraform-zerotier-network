# ZeroTier Network Terraform Module

ZeroTier lets you connect machines, containers, and programs to
encrypted virtual LANs over the Internet. It provides NAT traversal,
flow control rules, multipath, and more, without the hassle of having
to manage TLS keys. It supports IPv4, IPv6, as well as any other
protocol that runs on Ethernet, such as mDNS, FCoE, SCCP, IPX, BGP or
OSPF.

## Usage

```hcl
module "network" {
  source      = "zerotier/network/zerotier"
  version     = "0.0.1"
  description = "Hello ZeroTier!"
  subnets     = ["10.9.8.0/24"]
  flow_rules  = "accept;"
}
```
