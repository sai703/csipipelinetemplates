variable "tags" {
  type = map(string)
}

variable "env" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "function_apps" {
  type    = list(string)
  default = []
}
