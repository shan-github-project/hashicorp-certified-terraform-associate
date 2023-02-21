# Create EC2 Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

resource "aws_instance" "my-ec2-vm" {
  ami               = "ami-0cc87e5027adcdca8"
  instance_type     = "t2.micro"
  availability_zone = "us-east-2a"
  #availability_zone = "us-east-2b"
  tags = {
    "Name" = "web"
    #"tag1" = "Update-test-1"    
  }
}

