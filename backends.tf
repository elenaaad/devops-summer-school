terraform {
  backend "gcs" {
    bucket = "terraform-state-summer-school"
    prefix = "dev"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.60"
    }
  }
}