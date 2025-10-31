terraform {
	required_providers {
	aws = {
		source = "hashicorp/aws"
		version = "6.18.0"
    }
  }
	backend "s3" {
		bucket = "mk-india-state-bucket"
		key = "terraform.tfstate"
		region = "eu-north-1"
		dynamodb_table = "mk-india-state-table"
	}
}
