terraform {
  source = "../main.tf"
}

include {
  path = find_in_parent_folders("backend.hcl")
}


inputs = {
  module_name = "module-c"
  resource_id = "resource-003"
  dependency_info = dependency.module-b.outputs.resource_output
}
