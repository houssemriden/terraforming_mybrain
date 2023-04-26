
terraform {
	
  required_providers {
	aws = { 
      source  = "hashicorp/aws"
      version = "3.26.0"
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




}


output "publicip"{
	value="$test.public_ip"

}
