provider "aws" {
  access_key = "AKIA27BRXH7YEVSIJBTG"
  secret_key = "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"
  region     = "us-east-1"
}
resource "aws_instance" "myec2" {
     ami= "ami-074cce78125f09d61"
     instance_type = "t2.micro"
     key_name = "raghu-terraform"
provisioner "remote-exec"{
  inline = [
    "sudo amazon-linux-extras install -y nginx1.12"
    #yum -y install nginx1.12 (if centos linux)
    "sudo systemctl start nginx
  ]
  #for giving user name and pem access_key
  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = file("./raghu-terraform.pem")
    host = self.public_ip
  }

