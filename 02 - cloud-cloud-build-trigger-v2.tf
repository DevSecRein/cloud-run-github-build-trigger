# Note: This connection needs to be set up manually in the Cloud Console first.
# data "google_cloudbuildv2_connection" "github_connection" {
#   project  = var.proj_id
#   name     = var.github-connection-name
#   location = var.project_region
#     # github_config {
#     # app_installation_id = var.installationid
#     #     authorizer_credential {
#     #     oauth_token_secret_version = var.oauth-secret
#     #     }
#     # }
# }

#Reference already existing connection
resource "google_cloudbuildv2_repository" "github_repo" {
  project  = var.proj_id
  name     = var.github_repo_name
  location = var.project_region
  parent_connection = var.github-connection-name
  remote_uri = "https://github.com/DevSecRein/cloud-run-ex.git"
}

# Add a Cloud Build Trigger resource
resource "google_cloudbuild_trigger" "github_trigger" {
  project = var.proj_id
  location = var.project_region
  name = var.github-push-name

  github {
    name = "cloud-run-ex"
    owner = "DevSecRein"
    push {
      branch = ".*" # Trigger on any branch push
    }
  }

  filename = "cloudbuild.yaml" # Specify the Cloud Build configuration file
}
