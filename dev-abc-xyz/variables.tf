variable "region" {}
variable "zone" {
    type = "list"
}
variable "security_groups" {
    type = "list"
}
variable "date" {}
variable "subnet1" {}
variable "subnet2" {}
variable "name" {}
variable "instancetype" {}
variable "vpc_id" {}
variable "keypair" {}
variable "instance_profile_name" {}
variable "minsize" {}
variable "maxsize" {}
variable "remotetags" {}
variable "hc_grace" {}
variable "remotevarpath" {}
variable "desired_capacity" {}

variable "appname" {}
variable "application_framework" {}
variable "application_owner" {}
variable "application_role" {}
variable "product_name" {}
variable "product_subcategory" {}

locals {
  common_tags = {
    Name                    = "${var.name}"
    Application             = "${var.appname}"
    Product_Name            = "${var.product_name}"
    Product_SubCategory     = "${var.product_subcategory}"
    Application_Framework   = "${var.application_framework}"
    Application_Role        = "${var.application_role}"
    Application_Owner       = "${var.application_owner}"
    Date                    = "${var.date}"
    Automation              = "Terraform"
  }
}