include "root" {
  path = find_in_parent_folders("../root.hcl")
}

inputs = {
  bucket_name = "dev-bucket"
  test        = "value"
  region = "test"
}
