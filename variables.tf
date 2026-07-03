variable "region" {
  description = "EKS region"
  type        = string
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "vpc_cidr" {
  description = "EKS vpc cidr block"
  type        = string
}

variable "instance_types" {
  description = "EKS node instance types"
  type        = string
}

variable "azs"{
  description = "Availability zones"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnets"
  type        = list(string)
}


variable "public_subnets" {
  description = "Public subnets"
  type        = list(string)
}