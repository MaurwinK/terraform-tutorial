<<<<<<< HEAD
/*
output "ec2_public_ip" {
  value = module.ec2.ec_public_ip[*]
}

output "ec2_public_dns" {
  value = module.ec2.ec_public_dns[*]
}

output "ec2_private_ip" {
  value = module.ec2.ec_private_ip[*]
}
*/

output "ec2_public_ips" {
  value = module.ec2.ec_public_ip
}

output "ec2_private_ips" {
  value = module.ec2.ec_private_ip
}

=======
output "ec2_public_ip" {
  value = module.ec2.ec_public_ip
}

>>>>>>> 9895d7f2bedba8eb1266895b002e3b63e24704a0
output "ec2_public_dns" {
  value = module.ec2.ec_public_dns
}

<<<<<<< HEAD
=======
output "ec2_private_ip" {
  value = module.ec2.ec_private_ip
}

>>>>>>> 9895d7f2bedba8eb1266895b002e3b63e24704a0
