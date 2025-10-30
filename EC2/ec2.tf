#To create a EC2 instance we need

#Key Pair for login

resource aws_key_pair my_key {
	key_name = "terra-key-ec2"
	public_key = file("${path.module}/terra-key-ec2.pub")  #We can also copy paste the public key but not recommended 
}

#VPC and Security Group

resource aws_default_vpc default {
	
}

resource aws_security_group my_security_group {
	name = "automate-sg"
	description = "This wil add a TF generated Security Group"
	vpc_id = aws_default_vpc.default.id #Interpolation

	#Inbound Rules 
	ingress {
		from_port = 22
		to_port = 22
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]	
	}
	ingress {
                from_port = 80
                to_port = 80
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
        }
	ingress {
                from_port = 8000
                to_port = 8000
                protocol = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
		description = "Flask App"
        }

	#Outbound Rules
	egress{
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}

	tags = {
		Name = "automate-sg"
	}
}

#EC2 instance

resource aws_instance "my_instance" {
<<<<<<< HEAD
	#count = 3
	for_each = tomap({
		MK-micro = "t3.micro"
		MK-medium = "t3.medium"
	})
	depends_on = [ aws_security_group.my_security_group, aws_key_pair.my_key ]
	key_name = aws_key_pair.my_key.key_name
	security_groups = [aws_security_group.my_security_group.name]
	instance_type = each.value
=======
	key_name = aws_key_pair.my_key.key_name
	security_groups = [aws_security_group.my_security_group.name]
	instance_type = var.ec2_instance_type
>>>>>>> 9895d7f2bedba8eb1266895b002e3b63e24704a0
	ami = var.ec2_ami_id  #Ubuntu changed to Amazon Linux
	user_data = file("${path.module}/install_nginx.sh")
	
	root_block_device {   #Storage
<<<<<<< HEAD
		volume_size = var.env == "prod" ? 20 : var.ec2_default_root_storage_size
		volume_type = "gp3"
	}
	tags = {
		Name = each.key
=======
		volume_size = var.ec2_root_storage_size
		volume_type = "gp3"
	}
	tags = {
		Name = "MK-Automate"
>>>>>>> 9895d7f2bedba8eb1266895b002e3b63e24704a0
	}
}
