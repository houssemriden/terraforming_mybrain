provider "aws" {
	region = "us-east-1"
}




resource "aws_instance" "example" {

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

	
