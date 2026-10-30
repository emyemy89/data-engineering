terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }
}

provider "google" {
  credentials = "./keys/my-creds.json"
  project = "data-talks-data-engineering"
  region  = "europe-north1"
}

# Create a Google Cloud Storage bucket with auto-expiration rules
resource "google_storage_bucket" "demo-bucket" {
  name          = "data-talks-data-engineering-terra-bucket"
  location      = "EU"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}
