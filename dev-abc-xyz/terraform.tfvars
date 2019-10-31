name = "dev-abc-xyz"
region = "us-west-2"
zone = [ "us-west-2a", "us-west-2b" ]
appname = "abc-xyz"
application_framework = "J2ee"
application_owner = "xxxxx"
application_role = "xxxxxxxx"
product_name = "xxxxxxxxxxxx"
product_subcategory = "xxxxxxxx"

## asg/launchconfig
instancetype = "t2.medium"
subnet1 = "subnet-0a7a3e106bb8e0028"
subnet2 = "subnet-043ab52cc73a3fe51"
security_groups = [ "sg-0dfc7e6c498a806bf" ]
vpc_id = "vpc-0c496debf358f0c3b"
minsize = "1"
maxsize = "2"
desired_capacity = "1"
hc_grace = "300"
keypair = "xxxxxxx"
instance_profile_name = "xxxxxxx-role"
remotetags = "infra,app-java"
remotevarpath = "arp-workspace-activity/dev-vars.yml"

date = "2019-10-31"
