variable "private subnet" {
  type="list"
  default=["10.0.3.0/24","10.0.4.0/24"]
}


variable "public subnet" { 
  type="list"
  default=["10.0.1.0/24 ","10.0.4.0/24"]
}

