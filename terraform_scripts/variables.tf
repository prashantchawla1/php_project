variable "profile" {
    description = "AWS credentials profile you want to use"
}
variable "region" {
        default = "us-east-1"
}
variable "ami" {

  type = "map"
  description = "ID of AMI to use for the instance"
  default = {
    us-east-1 = "ami-04b9e92b5572fa0d1"
  }
}
variable "instance_type" {
  description = "The type of instance to start"
  default = "t2.micro"
}
variable "aws_region" {
  default = "us-east-1"
}
variable "instance_count" {
  description = "Number of instances to launch"
  default = "4"
}
variable "instance_name" {
  description = "EC2 instance names"
  type = "list"
  default = ["prod_flux7_web_ea_01","prod_flux7_ansible_srv_ea_01","prod_flux7_client_ea_01","prod_flux7_mysql_srv_ea_01"]
}
variable "ebs_optimized" {
  description = "If true, the launched EC2 instance will be EBS-optimized"
  default     = false
}
variable "disable_api_termination" {
  description = "If true, enables EC2 Instance Termination Protection"
  default     = false
}
variable "monitoring" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled"
  default     = false
}

variable "prod-web-p-ea-sg" {
  description = "A list of security group IDs to associate with"
  default        = "sg-0e694d6011c267c3a"
}
variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  default     = "subnet-049705b935d87512c"
}
variable "associate_public_ip_address" {
  description = "If true, the EC2 instance will have associated public IP address"
  default     = false
}
variable "private_ip" {
  description = "Private IP address to associate with the instance in a VPC"
  default     = ""
}
variable "username" {
  description = "Administrator username"
  default     = "Administrator"
}
variable "source_dest_check" {
  description = "Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs."
  default     = true
}
variable "ipv6_address_count" {
  description = "A number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet."
  default     = 0
}
variable "ipv6_addresses" {
  description = "Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface"
  default     = []
}
variable "root_block_device" {
  description = "Customize details about the root block device of the instance. See Block Devices below for details"
  default     = []
}
variable "ebs_block_device_c" {
  type        = "map"
  default     = {
        volume_size = 10
  }
}

variable "ebs_block_device_d" {
  type        = "map"
  default     = {
        device_name = "/dev/sdd"
        volume_size = 10
        volume_type = "gp2"
        delete_on_termination = "false"
  }
}

variable "ephemeral_block_device" {
  description = "Customize Ephemeral (also known as Instance Store) volumes on the instance"
  default     = []
}

variable "network_interface" {
  description = "Customize network interfaces to be attached at instance boot time"
  default     = []
}
variable "cpu_credits" {
  description = "The credit option for CPU usage (unlimited or standard)"
  default     = "standard"
}
variable "use_num_suffix" {
  description = "Always append numerical suffix to instance name, even if instance_count is 1"
  default     = "false"
}
variable "tenancy" {
  description = "The tenancy of the instance (if the instance is running in a VPC). Available values: default, dedicated, host."
  default     = "default"
}
variable "iam_instance_profile" {
  description = "The IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile."
  default     = ""
}
variable "placement_group" {
  description = "The Placement Group to start the instance in"
  default     = ""
}
variable "instance_initiated_shutdown_behavior" {
  description = "Shutdown behavior for the instance" # https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingInstanceInitiatedShutdownBehavior
  default     = ""
}
variable "volume_tags" {
  description = "A mapping of tags to assign to the devices created by the instance at launch time"
  default     = {}
}

