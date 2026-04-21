terraform {
  backend "remote" {
    organization = "fuyiran111"
    workspaces {
      name = "terraform-training"
    }
    region = "ap-east-1"
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
