terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region                   = var.region
  shared_credentials_files = ["~/.aws/credentials"]  //change to your credential config file
  profile                  = "vscode_awskey"         //change to your profile name
}
