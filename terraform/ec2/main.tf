provider "aws" {
  region  = "us-east-1"
  profile = "fernando-freires"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "my-instance-terraform-ec2"

  ami                    = "ami-0ada6d94f396377f2"
  instance_type          = "t3.small"
  key_name               = "key-pair"
  monitoring             = true
  vpc_security_group_ids = [""]
  subnet_id              = ""

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Autor       = "Fernando Freires"
  }
}