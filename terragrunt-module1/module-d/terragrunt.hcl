terraform {
  source = "../../base/main.tf"
}

include "base" {
  path = find_in_parent_folders("../base/backend.hcl")
}



inputs = {
  module_name = "module-d"
  resource_id = "resource-003"
}
