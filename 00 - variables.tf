variable "project_region" {
    default = "southamerica-east1"
    type    = string
}

variable "image_tag" {
  default = "latest"
  type = string
}

variable "artifact_repo" {
  default = "ultramarines-armageddon"
  type = string
}

variable "service" {
  default = "be-a-man-10"
  type = string
}

variable "github_owner" {
  default = "DevSecRein"
  type = string
}

variable "github_repo_name" {
  default = "cloud-run-ex"
  type = string
}

variable "app_name" {
  default = "be-a-man-10" #works better if it is the same as service name.
  type = string
}

variable "github-connection-name" {
  default = "bam10connection"
  type = string
}