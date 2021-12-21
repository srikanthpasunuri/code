provider "aws" {
  access_key = "AKIA27BRXH7YOZSSIWP6"
  secret_key = "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"
  region     = "us-east-1"
}
resource "aws_instance" "mac_Ubuntu2" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  key_name      = "Navya"
}
