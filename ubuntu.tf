provider "aws" {
  access_key = "AKIA27BRXH7YFX6F5ZDS"
  secret_key = "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"
  region     = "us-east-1"
}
resource "aws_instance" "mac_Ubuntu2" {
  ami           = "ami-0bb84e7329f4fa1f7"
  instance_type = "t2.micro"
  key_name      = "forboth"
}
