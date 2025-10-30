
variable "ec2_instance_type" {
	default = "t3.micro"
	type = string
}

variable "ec2_default_root_storage_size" {
	default = 10
	type = number
}

variable "ec2_ami_id" {
	default = "ami-0a716d3f3b16d290c"
	type = string
}

variable "env" {
	default = "prod"
	type = string
}
