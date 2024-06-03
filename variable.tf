variable "vpc_id" {
  description = "The ID of the VPC where subnets will be created"
  type        = string
}

variable "region" {
  description = "The AWS region"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
}

variable "public_subnet_names" {
  description = "List of public subnets names"
  type        = list(string)
}

variable "private_subnet_names" {
  description = "List of private subnets names"
  type        = list(string)
}


variable "availability_zones" {
  description = "List of availability zones to distribute subnets across"
  type        = list(string)
}

variable "internet_gateway_id" {
    description = "Internet gateway Id"
    type = list(string)
}