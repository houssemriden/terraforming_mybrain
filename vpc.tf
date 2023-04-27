resource "aws_vpc" "main" {
cidr_block="10.0.0.0/16


}

resource "aws_subnet" "public"{
count=2



}


resource "aws_subnet" "private" {


}

