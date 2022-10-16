provider "aws" {
	region = "us-east-1"
}




resource "aws_instance" "example" {

	ami = " ami-xxx"
	instance_type = "t1.micro"

}
