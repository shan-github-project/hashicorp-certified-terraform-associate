# Create EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-0cc87e5027adcdca8" # Amazon Linux
  instance_type = "t2.micro"
  count         = 5
  tags = {
    "Name" = "web"
    #"Name" = "web-${count.index}"
  }
}
