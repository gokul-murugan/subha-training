variable "mystringvariable" {
  type = string
}
output "mystringoutput" {
  value = var.mystringvariable
}

variable "mynumbervariable" {
  type = number
}
output "mynumberoutput" {
  value = var.mynumbervariable
}

variable "mylistvariable" {
  type = "list"
}

output "mylistoutput" {
  value = var.mylistvariable[0]
}

variable "mymapvariable" {
  type = "map"
}

output "mymapoutput" {
  value = var.mymapvariable["Country"]
}