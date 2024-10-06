 resource "aws_instance" "ec2-instance1" {
   ami = "ami-09da212cf18033880" # AMI for us-east-2
   instance_type = "t2.micro" #free

   tags = {                                
     Name = "demo-server1"
}
}
resource "aws_instance" "ec2-Instance2" {
  provider      = aws.west
  ami           = "ami-0d081196e3df05f4d"  # AMI for us-west-2
  instance_type = "t2.micro" #free

  tags = {                                
    Name = "demo-server2"
}
}
resource "aws_instance" "ec2-Instance3" {
  provider      = aws.aussie
  ami           = "ami-0cf70e1d861e1dfb8"  # AMI for ap-southeast-2
  instance_type = "t2.micro" # free

  tags = {                                
    Name = "demo-server3"
}
}