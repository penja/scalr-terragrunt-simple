include {
  path = "${get_repo_root()}/base/backend.hcl"
}

terraform {
  source = "../../base/main.tf"
}

inputs = {
  module_name = "module-a"
  resource_id = "resource-001"
}

