data "aws_db_instance" "database" {
  db_instance_identifier     = var.db_instance_identifier
  engine                     = var.db_engine
  engine_version             = var.db_engine_version
  db_instance_class          = var.db_instance_class
  allocated_storage          = var.allocated_storage
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
  backup_retention_period    = var.backup_retention_period
  db_subnet_group            = var.db_subnet_group_name
  vpc_security_groups        = [var.vpc_security_group_ids]
  publicly_accessible        = var.publicly_accessible
  port                      = var.port
}