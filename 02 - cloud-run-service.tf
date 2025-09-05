#This code should be commented out at first. Then when there is an image in the artifact
#registry, uncomment the code. Unfortuneately there is no "wait until image exist" dependency

# resource "google_cloud_run_v2_service" "bam10run" {
#   name     = var.service
#   location = var.project_region #may have to refactor to multi-regional

#   template {
#     containers {
#       # Cloud Run will ignore this image if source is set
#       image = "${var.project_region}-docker.pkg.dev/${var.proj_id}/${var.artifact_repo}/${var.app_name}:latest"
#     }
#   }
#     traffic {
#       type    = "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST"
#       percent = 100
#   }
#   #Create a dependency so the
#   depends_on = [
#     google_artifact_registry_repository.be-a-man-10
#   ]
# }