variable "key_pair_name" {
  description = "Existing AWS key pair name to use for EC2 instances"
  type        = string
  default     = "My-DevOPS-Assignement"   
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"  
}
