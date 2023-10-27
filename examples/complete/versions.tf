terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.57"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10"
    }
  }
  backend "s3" {
    bucket   = "emrah-aws-eks-vpc-terraform-state-bucket"
    key      = "emrah-aws-eks-vpc-terraform/terraform.tfstate"
    region   = "eu-west-1"
    dynamodb_table = "emrah-aws-eks-vpc-terraform-dynamo"
    encrypt = true
  }
}
