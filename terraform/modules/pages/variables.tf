variable "account_id" {
  type = string
}

variable "project_name" {
  type = string
}

variable "github_owner" {
  type = string
}

variable "github_repo" {
  type = string
}

variable "production_branch" {
  type    = string
  default = "main"
}

variable "d1_databases" {
  type    = map(string)
  default = {}
}