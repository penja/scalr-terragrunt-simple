include {
    path = find_in_parent_folders("base/backend.hcl")
}

terraform {
  source = "../../base/main.tf"
}

dependency "module-a" {
  config_path = "../module-a"
  mock_outputs_allowed_terraform_commands = ["validate", "plan", "init"]
  mock_outputs = {
    module_name = "module-b"
    resource_id = "resource-002"
  }
}

inputs = {
  module_name = "module-b"
  resource_id = "resource-002"
}
