resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.sub1.id

  tags = {
    Name = "tf NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency bs msh lazem
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}