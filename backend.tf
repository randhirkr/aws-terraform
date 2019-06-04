terraform {
	backend "s3" {
 		bucket = "ran-tfstate"
 		dynamodb_table = "ran-tf-state-lock"
		region = "us-west-2"
 		key = "ran-terraform-state-file"
                profile = "randhirkr"
 	} 
}
