variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones for the VPC"
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2b"]
}

variable "sg_name" {
  description = "Name of the Security Group"
  type        = string
  default     = "tm_security_group"
}

variable "alb-name" {
  description = "Name of the ALB"
  type        = string
  default     = "tm-lb"
}

variable "target-group-name" {
  description = "Name of the target group"
  type        = string
  default     = "tm-target-group"
}

variable "container_image" {
  description = "Container image for ECS task"
  type        = string
  default     = "992382674979.dkr.ecr.eu-west-2.amazonaws.com/threatmodelapp2:latest"
}

variable "container_port" {
  description = "Container port for the application"
  type        = number
  default     = 3000
}

variable "desired_count" {
  description = "Desired count of ECS service instances"
  type        = number
  default     = 1
}

variable "certificate_arn" {
  description = "The ARN of the SSL certificate for the ALB"
  type        = string
  default     = "arn:aws:acm:eu-west-2:992382674979:certificate/b2b3f56a-6a81-477f-9726-f381f3adc632"
}

variable "zone_name" {
  description = "Route53 zone name"
  type        = string
  default     = "tm.teamalpha.abdelhakimyusuf.net"
}

variable "record_name" {
  description = "Route53 record name"
  type        = string
  default     = "tm.teamalpha.abdelhakimyusuf.net"
}


variable "create_iam_role" {
  description = "Whether to create an IAM role"
  type        = bool
  default     = false
}

