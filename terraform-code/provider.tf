provider "google" {
  credentials = file(var.credentials_file_path)
  project     = "belal-357614"
  region      = "us-central1"
  zone        = var.zone
}