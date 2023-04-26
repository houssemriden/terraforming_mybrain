resource "aws_instance" "test" {
	ami = "ami-06e46074ae430fba6"
	instance_type="t2.micro"
	vpc_security_group_ids =["${aws_security_group.sg_terraform.id}"]
