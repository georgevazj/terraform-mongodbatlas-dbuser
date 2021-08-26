# Database user
variable "database_username" {
  type = string
  description = "(Required) MongoDB database username"
}

variable "database_password" {
  type = string
  description = "(Required) MongoDB database user password"
}

variable "project_id" {
  type = string
  description = "(Required) MongoDB Atlas project id"
}

variable "database_name" {
  type = string
  description = "(Required) Database name"
}