include {
    path = find_in_parent_folders("backend/backend.hcl")
}

terraform {
  source = "../base/main.tf"
}


inputs = {
  module_name = "module-b"
  resource_id = "resource-002"
}
