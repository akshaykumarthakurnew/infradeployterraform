provider "aws" {
  region = var.aws_region
}

resource "aws_eks_cluster" "dasekstest" {
  name     = var.cluster_name
  role_arn = aws_iam_role.dasekstest.arn

  vpc_config {
    subnet_ids = var.subnet_ids
    security_group_ids = [aws_security_group.dasekstest.id]
    endpoint_public_access = true
    endpoint_private_access = false
    public_access_cidrs = ["0.0.0.0/0"]
  }

  depends_on = [
    aws_iam_role_policy_attachment.dasekstest,
  ]
}

resource "aws_iam_role" "dasekstest" {
  name = "dasekstest-eks-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "dasekstest" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.dasekstest.name
}

resource "aws_security_group" "dasekstest" {
  name        = "dasekstest-eks-cluster"
  description = "Security group for the EKS cluster"

  vpc_id = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

variable "aws_region" {
  description = "AWS region"
  default     = "eu-west-2"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID"
}
