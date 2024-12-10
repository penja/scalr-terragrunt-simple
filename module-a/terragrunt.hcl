include {
  path = find_in_parent_folders()
}

terraform {
  source = "../main.tf"
}

inputs = {
  module_name = "module-a"
  resource_id = "resource-001"
}

