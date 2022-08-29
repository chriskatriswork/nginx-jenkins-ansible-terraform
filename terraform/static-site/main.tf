provider "aws" {
    region = "us-east-2"
    profile = var.profile
}

resource "aws_instance" "site" {
    ami = "ami-02d1e544b84bf7502"
    instance_type = "t2.micro"
    key_name = "devops"
    vpc_security_group_ids = ["sg-024d46335d5dcdcfc"]

    tags = {
        Name = var.name
        group = var.group
    }
}