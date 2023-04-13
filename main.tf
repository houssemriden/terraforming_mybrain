
terraform {
	
  required_providers {
	aws = { 
	}
  }
  cloud {
    organization = "parlemonde"

    workspaces {
      name = "terraform-on-aws"
    }
  }
}

variable "port" {
	description = "the port the server will use for http" 
	default=8080
}
resource "aws_instance" "test" {
	ami = "ami-0ddab716196087271"
	instance_type="t2.micro"
	vpc_security_group_ids =["${aws_security_group.sg_terraform.id}"]


	user_data = <<EOF
	 	#! /bin/bash	
		echo " hello,world" > index.html
		nohup busybox httpd -f -p "${var.port}" &
		EOF
		
	tags = {
	name="terraform_configuration"
	}

}
resource "aws_security_group" "sg_terraform" {
	name="sg_terraform"

	ingress  { 
		from_port ="${var.port}"
		to_port="${var.port}"
		protocol="tcp"
		cidr_blocks=["0.0.0.0/0"]
}
}

output "publicip"{
	value="$test.public_ip"

}
