terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.31.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
  profile = "jkennedy"
  # Configuration options
}
provider "aws" {
  alias = "west"
  region = "us-west-2"
  profile = "jkennedy"
  # Configuration options
}
provider "aws" {
  alias = "aussie"
  region = "ap-southeast-2"
  profile = "jkennedy"
}