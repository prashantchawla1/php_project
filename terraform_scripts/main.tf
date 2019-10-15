resource "aws_key_pair" "terraform-p-user" {
  key_name = "terraform-p-user"
  public_key = "${file("/home/ec2-user/.ssh/terraform-p-user.pub")}"
}
resource "aws_instance" "webprod" {
  ami                     = "${lookup(var.ami,var.aws_region)}"
  instance_type           = "${var.instance_type}"
  get_password_data       = "true"
  disable_api_termination = "false"
  count                   = "${var.instance_count}"
  subnet_id               = "${var.subnet_id}"
  key_name                = "${aws_key_pair.terraform-p-user.key_name}"
  monitoring              = "${var.monitoring}"
  vpc_security_group_ids  = ["${var.prod-web-p-ea-sg}"]
  iam_instance_profile    = "${var.iam_instance_profile}"
  associate_public_ip_address = "${var.associate_public_ip_address}"
  private_ip              = "${var.private_ip}"
  ipv6_address_count      = "${var.ipv6_address_count}"
  ipv6_addresses          = "${var.ipv6_addresses}"
  ebs_optimized           = "${var.ebs_optimized}"
  volume_tags             = "${var.volume_tags}"
  root_block_device       = ["${var.ebs_block_device_c}"]
  ebs_block_device        = ["${var.ebs_block_device_d}"]
  ephemeral_block_device  = "${var.ephemeral_block_device}"
  source_dest_check       = "${var.source_dest_check}"
  disable_api_termination = "${var.disable_api_termination}"
  instance_initiated_shutdown_behavior = "${var.instance_initiated_shutdown_behavior}"
  placement_group         = "${var.placement_group}"
  get_password_data	  = "false"
  tenancy                 = "${var.tenancy}"
  tags                    {
                            ApplicationID = "Flux7"
                            BillingCode = "1724781263"
                            Owner = "prashant.a.chawla@live.com"
                            OS = "Ubuntu"
  }
}
