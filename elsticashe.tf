
resource "aws_elasticache_cluster" "memcached_cluster" {
  cluster_id      = "cluster-memcached"
  engine          = "memcached"
  node_type       = "cache.m4.large"
  num_cache_nodes = 2
  # parameter_group_name = "default.memcached1.4"
  security_group_ids = [aws_security_group.elasti_sg.id]
  subnet_group_name  = aws_elasticache_subnet_group.elasti_sub_group.name
  port               = 11211
}

resource "aws_elasticache_subnet_group" "elasti_sub_group" {
  name       = "my-cache-subnet"
  subnet_ids = [module.network_m.prv_sub_2, module.network_m.prv_sub_4]
}

