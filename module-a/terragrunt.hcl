include {
  path = find_in_parent_folders("backend/backend.hcl")
}

terraform {
  source = "../main.tf"
}

inputs = {
  module_name = "module-a"
  resource_id = "resource-001"
}

