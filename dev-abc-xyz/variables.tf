variable "region" {default = "us-west-2"}
variable "zone" {
    type = "list"
    default = ["us-west-2a", "us-west-2b"]
}
variable "security_groups" {
   type = "list"
   default = ["sg-0dfc7e6c498a806bf"] 
   
}
variable "date" {default = "2019-10-23"}
variable "subnet1" {default = "subnet-0a7a3e106bb8e0028"}
variable "subnet2" {default = "subnet-043ab52cc73a3fe51"}
variable "name" {default = "dev-abc-xyz"}
variable "instancetype" {default = "t2.medium"}
variable "vpc_id" {default = "vpc-0c496debf358f0c3b"}
variable "keypair" {default = "keypairtest1"}
variable "instance_profile_name" {default = "arn:aws:iam::732813442182:role/ec2-instance"}
variable "minsize" {default = "1"}
variable "maxsize" {default = "2"}
variable "remotetags" {default = "infra,app-java"}
variable "hc_grace" {default = "300"}
variable "remotevarpath" {default = "arp-workspace-activity/dev-vars.yml"}
variable "desired_capacity" {default = "1"}

variable "appname" {default = "try1"}
variable "application_framework" {default = "try1"}
variable "application_owner" {default = "try1"}
variable "application_role" {default = "try1"}
variable "product_name" {default = "try1"}
variable "product_subcategory" {default = "try1"}

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
