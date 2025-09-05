# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = var.proj_id
  region  = var.project_region
  credentials = var.key_name
}