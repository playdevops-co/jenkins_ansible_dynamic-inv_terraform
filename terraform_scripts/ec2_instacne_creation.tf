provider "aws"{
region = "us-east-2"
}

resource "aws_instance" "AWSEC2Instance"{
count = 2
ami = "ami-0cd3c7f72edd5b06d"
instance_type = "t2.micro"
key_name = "devopskey"
security_groups = ["launch-wizard-2"]
tags={
Name = "tomcatappserver"
}
}
