module "network_m" {
  source         = "./network"
  vpc_cidr       = var.VPC_CIDR
  vpc_name       = var.VPC_NAME
  az_1           = var.AZ_1
  az_2           = var.AZ_2
  pub_sub_cidr_1 = var.PUB_SUB_CIDR_1
  prv_sub_cidr_2 = var.PRV_SUB_CIDR_2
  pub_sub_cidr_3 = var.PUB_SUB_CIDR_3
  prv_sub_cidr_4 = var.PRV_SUB_CIDR_4
}