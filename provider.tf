terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0"
    }
  }

   backend "s3" {
   bucket = "state--891338049334--37i58x"
   key    = "test-state-terraform"
   region = "eu-central-1"
 }
}