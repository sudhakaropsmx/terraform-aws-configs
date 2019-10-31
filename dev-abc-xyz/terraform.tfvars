name = "dev-abc-xyz"
region = "us-east-1"
zone = [ "us-east-1a", "us-east-1b" ]
appname = "abc-xyz"
application_framework = "J2ee"
application_owner = "xxxxx"
application_role = "xxxxxxxx"
product_name = "xxxxxxxxxxxx"
product_subcategory = "xxxxxxxx"

## asg/launchconfig
instancetype = "t2.medium"
subnet1 = "subnet-xxxxx"
subnet2 = "subnet-xxxxxxx"
security_groups = [ "sg-xxxxxxxx" ]
vpc_id = "vpc-xxxxxxxxx"
minsize = "1"
maxsize = "2"
desired_capacity = "1"
hc_grace = "300"
keypair = "xxxxxxx"
instance_profile_name = "xxxxxxx-role"
remotetags = "infra,app-java"
remotevarpath = "arp-workspace-activity/dev-vars.yml"

date = "2019-10-23"
