variable "planet" {
    type = list
    default = ["mars", "earth", "moon"]
}

username = var.planet[1]