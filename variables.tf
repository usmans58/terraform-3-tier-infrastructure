variable "key_name" {
  description = "Name of the SSH key pair to use for the EC2 instance"
  type        = string
}
variable "public_key_path" {
  description = "Path to the public key file for the SSH key pair"
  type        = string
  sensitive   = true
}
variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"

}
variable "public_subnet_cidr_blocks" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)

}
variable "availability_zones" {
  description = "List of availability zones for the public subnets"
  type        = list(string)
}
variable "private_subnet_cidr_blocks" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
}
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}