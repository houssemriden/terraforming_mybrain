resource "aws_vpc" "main" {
cidr_block="10.0.0.0/16


}

resource "aws_subnet" "public"{
 vpc_id = aws_vpc.main.id
 count=2
 



}


resource "aws_subnet" "private" {


}

