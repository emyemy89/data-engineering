variable "credentials" {
  description = "Credentials file path"
  default     = "./keys/my-creds.json"
}

variable "region" {
  description = "Region"
  default     = "europe-north1"
}

variable "project" {
  description = "Project ID"
  default     = "data-talks-data-engineering"
}

variable "location" {
  description = "Project location"
  default     = "EU"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My Google Cloud Storage Bucket name"
  default     = "data-talks-data-engineering-terra-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket storage class"
  default     = "STANDARD"
}