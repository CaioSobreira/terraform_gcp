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
