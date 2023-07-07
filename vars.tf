variable "vpc_cidr" {
}

variable "cidr" {
  description = "cidr values"
  type        = list(any)
  default     = ["10.3.1.0/24", "10.3.2.0/24", "10.3.3.0/24"]
}


variable "az" {
  description = "avalibility zones"
  type        = list(any)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

#variable "privatesubnet_cidr" {
#}

variable "region" {
}

variable "bucket" {
}



