# Single Network with DNS configuration

You can set DNS search domain and DNS servers to push to all zerotier nodes via the central API.

A node running the ZeroTier agent will need to run
```
zerotier-cli set <networkId> allowDNS=1
```
for these settings to be applied

## Usage

To run this example you need to:

First, log into [my.zerotier.com](https://my.zerotier.com) and create an API
token under the [Account](https://my.zerotier.com/account) section.

Next, export the `ZEROTIER_CENTRAL_TOKEN` variable in your shell or
Terraform workspace.

```
terraform init
terraform plan
terraform apply
```
