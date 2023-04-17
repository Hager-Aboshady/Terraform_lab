resource "aws_instance" "bastion" {
  ami                         = var.AMI_ID
  instance_type               = var.INST_TYPE
  subnet_id                   = module.network_m.pub_sub_1
  key_name                    = aws_key_pair.key_pair.key_name
  vpc_security_group_ids      = [aws_security_group.bastion_sg.id]
  associate_public_ip_address = true
  tags = {
    Name = "${var.PUB_INST_NAME}_1"

  }
  provisioner "local-exec" {
    command = "echo ${self.public_ip} >file"
  }
}

# resource "aws_instance" "application" {
#   ami                     = var.AMI_ID
#   instance_type           = var.INST_TYPE
#   subnet_id               =module.network_m.prv_sub_2
#   key_name                = aws_key_pair.key_pair.key_name 
#   vpc_security_group_ids  =[aws_security_group.application_sg.id]
#   tags= {
#     Name= "${var.PRV_INST_NAME}_1"

#   }
# }
# resource "aws_instance" "bastion2" {
#   ami                     = var.AMI_ID
#   instance_type           = var.INST_TYPE
#   subnet_id               =module.network_m.pub_sub_3
#   key_name                = aws_key_pair.key_pair.key_name                                                                                             #this is the name of pub key and it will be sent to aws 

#   vpc_security_group_ids  =[aws_security_group.bastion_sg.id]
#   associate_public_ip_address = true
#   tags= {
#     Name= "${var.PUB_INST_NAME}_2"

#   }
# }

# resource "aws_instance" "application2" {
#   ami                     = var.AMI_ID
#   instance_type           = var.INST_TYPE
#   subnet_id               =module.network_m.prv_sub_4
#   key_name                = aws_key_pair.key_pair.key_name 
#   vpc_security_group_ids  =[aws_security_group.application_sg.id]
#   tags= {
#     Name= "${var.PRV_INST_NAME}_2"

#   }
# }