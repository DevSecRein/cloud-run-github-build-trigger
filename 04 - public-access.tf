# #Enables public access if wanted
# resource "google_cloud_run_service_iam_member" "noauth" {
#   location = google_cloud_run_service.service.location
#   service  = google_cloud_run_service.service.name
#   role     = "roles/run.invoker"
#   member   = "allUsers"
# }
