variable "names" {
description = "a list"
type = list(string)
default = ["apple","mango","orange"]
}

output "upper_names" {
    value = [for name in var.names : upper(name)]
}