terraform {
  backend "remote" {
    organization = "fuyiran111"
    workspaces {
      name = "terraform-training"
    }
  }
}

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-east-1"
}

resource "aws_instance" "terraform-created1" {
  ami           = "ami-0a3e33e468c258981"
  instance_type = "t3.micro"

  tags = {
    Name = "Hello-world"
  }
}