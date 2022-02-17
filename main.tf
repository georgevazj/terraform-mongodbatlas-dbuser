terraform {
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
      version = "1.0.0"
    }
  }
}

# Configure the MongoDB Atlas provider
provider "mongodbatlas" {
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

resource "mongodbatlas_database_user" "user" {
  project_id = var.project_id
  username = var.database_username
  password = random_password.password.result
  auth_database_name = "admin"

  roles {
    role_name     = "readWrite"
    database_name = var.database_name //The database name and collection name need not exist in the cluster before creating the user.
  }
  labels {
    key   = "Name"
    value = var.database_username
  }
}