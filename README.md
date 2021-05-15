# ZeroTier Network Terraform Module

ZeroTier lets you connect network endpoints to programmable virtual
LANs over the Internet. It provides encryption, NAT traversal, flow
control rules, multipath, and encryption, without the hassle of having
to manage TLS keys. It supports IPv4, IPv6, and any other protocol that
runs on Ethernet, such as mDNS, FCoE, SCCP, IPX, BGP or OSPF.

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
