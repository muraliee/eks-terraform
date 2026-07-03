
region = "eu-north-1"

cluster_name = "my-eks-cluster"


vpc_cidr = "10.0.0.0/16"

instance_types = "t3.small"

azs             = ["eu-north-1a", "eu-north-1b"]
private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]