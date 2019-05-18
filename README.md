Aliyun RDS Terraform Module
=========

- Reference: https://www.terraform.io/docs/providers/alicloud/r/db_instance.html

<img alt="Terraform" src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="600px">

The key features of this Module are:

- **RDS**: Creates a new RDS along with a Readonly instance.
  
Usage
-------------------------------

Use below snippet in tf file to create a RDS in Aliyun.

```
module "aliyun_rds" {
  source = "./modules/rds"

  instance_name = "my_db_instance_name"
  vswitch_id    = "db_vswitch_id"
  zone_id       = "availability_zone_id"

  instance_type = "instance_type"
  storage_size  = "50" // Modify it based on the requirement

  parameters = "rds_parameters_if_any"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| instance_name | RDS name | string | `rds` | no |
| instance_type | Default instance type for RDS | string | `rds.mysql.t1.small` | no |
| mysql_engine_version | MySQL version to use | string | `5.7` | no |
| parameters | RDS parameters to apply, Don't specify parameters which forces RDS to restart. | list | `<list>` | no |
| storage_size | RDS disk size | string | `20` | no |
| vswitch_id | VSwitch ID for RDS | string | - | yes |
| zone_id | Availability zone for RDS | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| master_db_instacne_connection_string | Master RDS instance endpoint |
| master_db_instacne_id | Master RDS instance id |
| master_db_instacne_name | Master RDS instance name |
| master_db_instacne_port | Master RDS instance connectivity port |
| readonly_db_instacne_connection_string | Readonly RDS instance endpoint |
| readonly_db_instacne_id | Readonly RDS instance id |
| readonly_db_instacne_port | Readonly RDS instance connectivity port |

