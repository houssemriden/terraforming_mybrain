provider "aws" {
	region = "us-east-1"
}


resource "aws_security_group" "instance" {
	name="terraform-example-instance"
	
	ingress {
		from_port = 8080	 
		to_port = 8080
		protocol = "tcp"
		cidr_block = ["0.0.0.0/0"]
	
}

}

resource "aws_instance" "example" {
	vpc_security_groups_ids = ["${aws_security_group.instance.id}"]
	ami = " ami-xxx"
	instance_type = "t1.micro"
	tags { 
		name="givename"

}
	user_data = << EOF 
	#! /bin/bash
	echo "Hello , world " > index.html
	nohup busybox httpd -f -p 8080 &
	EOF

}

	
