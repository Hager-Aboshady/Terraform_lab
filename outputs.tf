output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}
output "rds_endpoint" {
  value = aws_db_instance.rds.endpoint
}
output "elasti_endpoint" {
  value = aws_elasticache_cluster.memcached_cluster.configuration_endpoint

}







# output "db_username" {
#     value = data.local_file.username_file
#     sensitive = true
# }

# output "db_password" {
#     value =data.local_file.pass_file
#     sensitive = true
# }