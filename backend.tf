terraform { 
  backend "s3" { 
    bucket = "my-terraform-state-mohan-bucket" 
    key = "eks-cluster/terraform.tfstate" 
    region = "eu-north-1" 
    dynamodb_table = "terraform-lock-table"
     encrypt = true 
     } 
    }