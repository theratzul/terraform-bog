resource "random_password" "master_password" {
  length = 16
  special = false
}

resource "aws_rds_cluster" "default" {
  cluster_identifier = "my-cluster"
  master_username = "admin"
  master_password = random_password.master_password.result
}
