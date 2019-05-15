// RDS

output "master_db_instacne_id" {
  value       = "${alicloud_db_instance.db_instance.id}"
  description = "Master RDS instance id"
}

output "master_db_instacne_name" {
  value       = "${alicloud_db_instance.db_instance.instance_name}"
  description = "Master RDS instance name"
}

output "master_db_instacne_connection_string" {
  value       = "${alicloud_db_instance.db_instance.connection_string}"
  description = "Master RDS instance endpoint"
}

output "master_db_instacne_port" {
  value       = "${alicloud_db_instance.db_instance.port}"
  description = "Master RDS instance connectivity port"
}

// Read
output "readonly_db_instacne_id" {
  value       = "${alicloud_db_readonly_instance.db_instance_read_only.id}"
  description = "Readonly RDS instance id"
}

output "readonly_db_instacne_connection_string" {
  value       = "${alicloud_db_readonly_instance.db_instance_read_only.connection_string}"
  description = "Readonly RDS instance endpoint"
}

output "readonly_db_instacne_port" {
  value       = "${alicloud_db_readonly_instance.db_instance_read_only.port}"
  description = "Readonly RDS instance connectivity port"
}
