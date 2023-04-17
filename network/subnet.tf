resource "aws_subnet" "sub1" {    #pub1
  vpc_id     = aws_vpc.main.id                                                                                      #m2drsh ast5dm el output l2n ana lsa
  cidr_block = var.pub_sub_cidr_1
  availability_zone = var.az_1

  map_public_ip_on_launch = true 

  tags = {
    Name = "sub1"
  }
  
}
resource "aws_subnet" "sub2" {   #prv2
  vpc_id     = aws_vpc.main.id
  cidr_block = var.prv_sub_cidr_2
  availability_zone = var.az_1

  tags = {
    Name = "sub2"
  }
}

resource "aws_subnet" "sub3" { #pub3
  vpc_id     = aws_vpc.main.id
  cidr_block = var.pub_sub_cidr_3
  availability_zone = var.az_2
  map_public_ip_on_launch = true 

  tags = {
    Name = "sub3"
  }
}

resource "aws_subnet" "sub4" { #prv4
  vpc_id     = aws_vpc.main.id
  cidr_block =var.prv_sub_cidr_4
  availability_zone = var.az_2

  tags = {
    Name = "sub4"
  }
}
