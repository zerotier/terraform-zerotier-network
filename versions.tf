terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
    }
    zerotier = {
      source  = "zerotier/zerotier"
      version = "~> v0.1.57"
    }
  }
  required_version = ">= 0.15"
}
