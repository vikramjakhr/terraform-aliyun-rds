// RDS

variable "instance_name" {
  default     = "rds"
  description = "RDS name"
}

variable "mysql_engine_version" {
  default     = "5.7"
  description = "MySQL version to use"
}

variable "instance_type" {
  default     = "rds.mysql.t1.small"
  description = "Default instance type for RDS"
}

variable "storage_size" {
  default     = 20
  description = "RDS disk size"
}

variable "vswitch_id" {
  description = "VSwitch ID for RDS"
}

variable "zone_id" {
  description = "Availability zone for RDS"
}

variable "parameters" {
  type        = "list"
  default     = []
  description = "RDS parameters to apply, Don't specify parameters which forces RDS to restart."
}
