resource "aws_eks_cluster" "eks-cluster-test" {
  name     = var.Name_EKS
  role_arn = data.aws_iam_role.rol_cluster.arn

  vpc_config {
    endpoint_private_access = true
    endpoint_public_access  = false
    subnet_ids = data.aws_subnets.eks_subnets.ids
    security_group_ids = [var.SG_EKS]
  }
  }
  
  
  resource "aws_eks_node_group" "node01" {
  cluster_name    = aws_eks_cluster.eks-cluster-test.name
  node_group_name = var.Name_Node
  node_role_arn   = data.aws_iam_role.rol_nodegroup.arn
  subnet_ids      = data.aws_subnets.eks_subnets.ids
  instance_types = [var.Instance_type]

  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }

}