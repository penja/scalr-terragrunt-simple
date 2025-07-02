include {
  path = find_in_parent_folders("../base/backend.hcl")
}

exclude {
    if = true
    actions = ["plan", "apply"]     # Exclude `plan` and `apply` actions.
    exclude_dependencies = false    # Do not exclude dependencies.
}


terraform {
  source = "../../base/main.tf"
}

inputs = {
  module_name = "module-a"
  resource_id = "resource-001"
}

