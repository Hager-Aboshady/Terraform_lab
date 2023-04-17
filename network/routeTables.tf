resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {                                
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "pub_route_table"
  }
}


resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  route {                                 
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "prv_route_table"
  }
}

