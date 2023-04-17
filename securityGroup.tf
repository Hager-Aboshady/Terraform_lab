resource "aws_security_group" "bastion_sg" {
  name        = "bastion_SG"
  description = "open port 22 for ssh connection "
  vpc_id      = module.network_m.vpc_id

  ingress {
    description = "any IP can connect via ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }


  tags = {
    Name = "bastion_SG"
  }
}

resource "aws_security_group" "application_sg" {
  name        = "application_SG"
  description = "open port 22 for ssh connection and port 3000 for inbound traffic"
  vpc_id      = module.network_m.vpc_id

  ingress {
    description = " ssh from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [module.network_m.vpc_cidr]
  }


  ingress {
    description = "traffic on 3000 from vpc"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [module.network_m.vpc_cidr]
  }



  tags = {
    Name = "application_SG"
  }
}

resource "aws_security_group" "rds_sg" {
  name        = "rds_SG"
  description = "open port 3306 for inboud traffic"
  vpc_id      = module.network_m.vpc_id

  ingress {
    description = " allow rds requests"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [module.network_m.vpc_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = "rds_SG"
  }
}

resource "aws_security_group" "elasti_sg" {
  name        = "elasti_SG"
  description = "open port 11211 for inboud traffic"
  vpc_id      = module.network_m.vpc_id

  ingress {
    description = " allow rds requests"
    from_port   = 11211
    to_port     = 11211
    protocol    = "tcp"
    cidr_blocks = [module.network_m.vpc_cidr]
  }



  tags = {
    Name = "elasti_SG"
  }
}


