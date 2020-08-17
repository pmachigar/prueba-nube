data "aws_ami" "ubuntu" {
  most_recent = true 
  
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
 }
 filter {
    name = "virtualization-type"
    values = ["hvm"]
 }
 owners = ["099720109477"] #canonical
}

data "aws_vpc" "selected"{
    default  = true  
}

data "aws_subnet_ids" "selected" {
  vpc_id = "${data.aws_vpc.selected.id}"
}