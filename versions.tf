terraform {
  # experiments = [module_variable_optional_attrs]
  required_providers {
    null = {
      source = "hashicorp/null"
    }
    zerotier = {
      source  = "zerotier/zerotier"
      version = "~> 0.1.47"
    }
  }
  required_version = ">= 0.15"
}
