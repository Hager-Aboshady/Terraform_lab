resource "aws_db_instance" "rds"{
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"

  db_subnet_group_name = aws_db_subnet_group.default.name

 # availability_zone    
  vpc_security_group_ids= [aws_security_group.rds_sg.id]
  
  username             =data.local_file.username_file.content_base64
  password             = data.local_file.pass_file.content_base64

 #parameter_group_name = "default.mysql5.7"

  skip_final_snapshot  = true          #if you don't need the final snapshot or if you want to save on storage costs.
}

resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [module.network_m.prv_sub_2,module.network_m.prv_sub_4]

  tags = {
    Name = "My DB subnet group"
  }
}