resource "google_artifact_registry_repository" "be-a-man-10" {
  location      = var.project_region
  repository_id = var.artifact_repo
  format        = "DOCKER"

}

#To make sure APIs don't disable on destroy
resource "google_project_service" "cloudrun" {
  service = "run.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "artifactregistry" {
  service = "artifactregistry.googleapis.com"
  disable_on_destroy = false
}

resource "google_project_service" "secretmanager" {
  service = "secretmanager.googleapis.com"
  disable_on_destroy = false
}