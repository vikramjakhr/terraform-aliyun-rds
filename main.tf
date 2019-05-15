########################################
#                  RDS                 #
########################################

resource "alicloud_db_instance" "db_instance" {
  instance_name    = "${var.instance_name}"
  engine           = "MySQL"
  engine_version   = "${var.mysql_engine_version}"
  instance_type    = "${var.instance_type}"
  instance_storage = "${var.storage_size}"
  vswitch_id       = "${var.vswitch_id}"
  zone_id          = "${var.zone_id}"

  parameters = "${var.parameters}"
}

resource "alicloud_db_readonly_instance" "db_instance_read_only" {
  master_db_instance_id = "${alicloud_db_instance.db_instance.id}"
  engine_version        = "${var.mysql_engine_version}"
  instance_type         = "${var.instance_type}"
  instance_storage      = "${var.storage_size}"
  instance_name         = "${var.instance_name}_read_only"
  vswitch_id            = "${var.vswitch_id}"
  zone_id               = "${var.zone_id}"

  parameters = "${var.parameters}"
}
