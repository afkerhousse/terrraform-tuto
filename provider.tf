terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0"
    }
  }
}

provider "aws" {
  default_tags {
    tags = {
      "sevdesk:owner"           = "data-engineering",
      "sevdesk:service"         = "terraformTuto",
      "sevdesk:user-data"       = "false",
      "sevdesk:criticality"     = "low",
      "sevdesk:confidentiality" = "public"
    }
  }
}