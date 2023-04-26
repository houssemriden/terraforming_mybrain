resource "aws_instance" "test" {
	ami = "ami-06e46074ae430fba6"
	instance_type="t2.micro"
	count=2
	vpc_security_group_ids =["${aws_security_group.sg_terraform.id}"]

	
	
	resource "aws_security_group" "sg_terraform" {
	name="sg_terraform"

	ingress  { 
		from_port ="${var.port}"
		to_port="${var.port}"
		protocol="tcp"
		cidr_blocks=["0.0.0.0/0"]
}
}
