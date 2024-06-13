variable "Name_EKS" {
  description = "Name EKS cluster"
  type        = string
  default     = "eks-cluster-test"
}

variable "SG_EKS" {
  description = "Security group EKS cluster"
  type        = string
  default     = "sg-041953ae6c7162e30"
}

variable "Name_Node" {
  description = "Name of Node Group"
  type        = string
  default     = "Nodeo1"
}

variable "Instance_type" {
  description = "Instance type"
  type        = string
  default     = "t3.small"
}

variable "vpc_id" {
  description = "vpc eks id"
  type        = string
  default     = "vpc-007a903d1727e4667"
}
