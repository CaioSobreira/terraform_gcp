

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.15.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "terraform-gcp-345009"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = "gcpkeys.json"
}
resource "google_storage_bucket" "GCS1" {
    name = "bucket-from-tf-using-sa-345009"
    location = "US"
}

