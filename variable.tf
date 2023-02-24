variable "string" {
    type = string
    description = "var String"
    default = "myString"
}

variable "number" {
    type = number
    default = "123"
}

variable "boolean" {
    default = true
}

variable "list" {
    default = [
        "google",
        "vmware",
        "amazon",
        "microsoft"
    ]
}

output "list_index_0" {
  value = var.list.0
}

output "list_all" {
  value = [
    for name in var.list :
        upper(name)
  ]
}

variable "map" {				# Sorting
    default = {
        aws = "amazon",
        gcp = "google",
        azure = "microsoft"
    }
}

output "map" {
  value = var.map.aws
}

output "map_all" {
    value = var.map
}
  
variable "set" {				# Sorting
    type = set(string)
    default = [
        "google",
        "vmware",
        "amazon",
        "microsoft"
    ]
}

output "set" {
  value = var.set
}

variable "object" {
    type = object({name=string, age=number})
    default = {
        name = "abc"
        age = 12
    }
}

variable "tuple" {
    type = tuple([string, number, bool])
    default = ["abc", 123, true]
}

variable "order" {
    type = string
    default = "ayoung" 
}

output "order" {
    value = var.order
}

output "random" {
    value = "hashicorp-${random_string.random.result}"
}