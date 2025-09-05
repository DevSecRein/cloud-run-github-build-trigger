# Note: This connection needs to be set up manually in the Cloud Console first.
resource "google_cloudbuildv2_connection" "github_connection" {
  project  = var.proj_id
  name     = "test" #var.github-connection-name #DON'T use already existing name
  location = var.project_region
    github_config {
    app_installation_id = var.installationid
        authorizer_credential {
        oauth_token_secret_version = var.oauth-secret
        }
    }
}

resource "google_cloudbuildv2_repository" "github_repo" {
  project  = var.proj_id
  name     = var.github_repo_name
  location = var.project_region
  parent_connection = google_cloudbuildv2_connection.github_connection.id
  remote_uri = "https://github.com/DevSecRein/cloud-run-ex.git"
}

