output "username" {
  value = mongodbatlas_database_user.user.username
}

output "password" {
  value = mongodbatlas_database_user.user.password
  sensitive = true
}