
variable "ec2_instance_type" {
	default = "t3.micro"
	type = string
}

<<<<<<< HEAD
variable "ec2_default_root_storage_size" {
=======
variable "ec2_root_storage_size" {
>>>>>>> 9895d7f2bedba8eb1266895b002e3b63e24704a0
	default = 10
	type = number
}

variable "ec2_ami_id" {
	default = "ami-0a716d3f3b16d290c"
	type = string
}
<<<<<<< HEAD

variable "env" {
	default = "prod"
	type = string
}
=======
>>>>>>> 9895d7f2bedba8eb1266895b002e3b63e24704a0
