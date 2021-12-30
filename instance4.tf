provider "aws" {
  region = "us-east-1"
}



resource "aws_instance" "terraform" {
  ami           = "ami-061ac2e015473fbe2"
  instance_type = "t2.micro"
  count         = "2"
  #availability_zone = "us-east-1"
  #key_name          = "JENK-PIPE"

  tags = {
      name = "terraF"
  }
}

resource "aws_s3_bucket" "bucket1" {
  bucket = "demo-s3-bucket-use-terraform"
  acl    = "private"
}
