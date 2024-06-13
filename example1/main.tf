provider "aws" {
  region = "us-east-1"
}


module "EKS" {
  source = "./modules/eks"
}

