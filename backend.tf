terraform { 
  backend "s3" { 
    bucket = "my-terraform-state-mohan-bucket" 
    key = "eks-cluster/terraform.tfstate" 
    region = "eu-north-1" 
    use_lockfile = "terraform-lock-table"
    encrypt = true 
        } 
    }
