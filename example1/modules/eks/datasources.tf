data "aws_iam_role" "rol_cluster" {
  name = "EKS-Cluster-role"
}

data "aws_iam_role" "rol_nodegroup" {
  name = "EKSNodeRole"
}

data "aws_subnets" "eks_subnets" {
  filter {
    name   = "tag:Name"
    values = ["Private-EKS-01","Private-EKS-02"]
  }
}

