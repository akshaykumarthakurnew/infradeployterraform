variable "aws_region" {
  description = "AWS region"
}

variable "cluster_name" {
  description = "eks-cluster-das"
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
  default     = []
}

variable "vpc_id" {
  description = "VPC ID"
}
