# Create EC2 Instance
resource "aws_instance" "web" {
  ami               = "ami-0cc87e5027adcdca8" # Amazon Linux
  instance_type     = "t2.micro"
  availability_zone = "us-east-2a"
  #availability_zone = "us-east-2b"
  tags = {
    "Name" = "web-1"
  }
  
  # lifecycle {
  #   create_before_destroy = true
  # }

}
