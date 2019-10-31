terraform {
    backend "s3" {
        bucket = "<change to your bucket name>"
        key = "dev-abc-xyz/terraform.tfstate"
        region = "us-east-1"
        encrypt = true
    }
}

provider "aws" {
  region = "${var.region}"
}

data "aws_vpc" "selected" {
  id = "${var.vpc_id}"
}

data "aws_ami" "centos" {
  most_recent = true

  filter {
    name   = "name"
    values = ["Centos7*"]
  }

  owners = ["<replace the owner id of the image>"]
}

resource "aws_launch_configuration" "master" {
#    name                  = "${var.name}"
    name_prefix           = "${var.name}-"
    image_id              = "${data.aws_ami.centos.id}"
    instance_type         = "${var.instancetype}"
    security_groups       = "${var.security_groups}"
    key_name              = "${var.keypair}"
    iam_instance_profile  = "${var.instance_profile_name}"
    lifecycle {
          create_before_destroy = true
    }
    root_block_device { 
          volume_type           = "gp2"
          volume_size           = "40"
          delete_on_termination = "true"
    }
    user_data = "${file("userdata.file")}"
}

resource "aws_autoscaling_group" "master" {
  availability_zones        = "${var.zone}"
  name                      = "${var.name}"
  max_size                  = "${var.maxsize}"
  min_size                  = "${var.minsize}"
  health_check_grace_period = "${var.hc_grace}"
  desired_capacity          = "${var.desired_capacity}"
  vpc_zone_identifier       = [ "${var.subnet1}","${var.subnet2}" ]
  launch_configuration      = "${aws_launch_configuration.master.name}"
  lifecycle {
    create_before_destroy   = true
  }
  tags = [
    {
        key = "Name"
        value = "${var.name}"
        propagate_at_launch = true
    }]
}
