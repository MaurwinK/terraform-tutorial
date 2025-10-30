/*
output "ec_public_ip" {
	value = aws_instance.my_instance[*].public_ip
}

output "ec_public_dns" {
        value = aws_instance.my_instance[*].public_dns
}

output "ec_private_ip" {
        value = aws_instance.my_instance[*].private_ip
}
*/

output "ec_public_ip" {
        value = [
	for instance in aws_instance.my_instance : instance.public_ip
        ]
}
output "ec_private_ip" {
        value = [
	for instance in aws_instance.my_instance : instance.private_ip
        ]
}
output "ec_public_dns" {
        value = [
	for instance in aws_instance.my_instance : instance.public_dns
        ]
}

