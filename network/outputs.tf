output "vpc_id" {
    value = aws_vpc.main.id
}
output "vpc_cidr" {
    value = aws_vpc.main.cidr_block
}
output "pub_sub_1" {
    value =aws_subnet.sub1.id
}
output "prv_sub_2" {
    value =aws_subnet.sub2.id
}
output "pub_sub_3" {
    value =aws_subnet.sub3.id
}
output "prv_sub_4" {
    value =aws_subnet.sub4.id
}