variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_id" {
  type = string
}

variable "subnet_cidr" {
  type = string
  default = "10.0.1.0/24"
}