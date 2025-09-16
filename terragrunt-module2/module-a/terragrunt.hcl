include "base" {
  path = find_in_parent_folders("../base/backend.hcl")
}

skip = true


terraform {
  source = "../../base/main.tf"
}

inputs = {
  module_name = "module-a"
  resource_id = "resource-001"
}

