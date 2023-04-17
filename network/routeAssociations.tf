resource "aws_route_table_association" "forsub1" {
  subnet_id      = aws_subnet.sub1.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "forsub2" {
  subnet_id      = aws_subnet.sub2.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "forsub3" {
  subnet_id      = aws_subnet.sub3.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "forsub4" {
  subnet_id      = aws_subnet.sub4.id
  route_table_id = aws_route_table.private.id
}
