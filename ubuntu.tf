provider "aws" {
  access_key = "AKIA27BRXH7YEVSIJBTG"
  secret_key = "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"
  region     = "us-east-1"
}
resource "aws_instance" "mac_Ubuntu2" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  key_name      = "Navya"
}
