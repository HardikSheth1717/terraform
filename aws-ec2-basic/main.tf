# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws",
#       version = "~> 3.27"
#     }
#   }

#   required_version = ">= 0.14.9"
# }

provider "aws" {
  region  = "ap-south-1"
  profile = "cloud-desire02"
}

resource "aws_instance" "learning_instance" {
  ami           = "ami-0851b76e8b1bce90b"
  instance_type = "t2.micro"

  tags = {
    "Name" = var.ec2_instance_name_tag
  }
}