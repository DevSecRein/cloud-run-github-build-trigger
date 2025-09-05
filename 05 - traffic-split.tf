#------------------ Traffic Split --------------------

#If you connfigured the cloudbuild.yaml then use this to split the traffic.
#Replace the revisions with the build name. An example of the YAML is in this repo
#It is commented out because it should be in your github repo

#   traffic {
#     type     = "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"
#     revision = "your-service-build-number" 
#     percent  = 40
#   }
#   traffic {
#     type     = "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"
#     revision = "your-service-build-number" 
#     percent  = 40
#   }
#   traffic {
#     type     = "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"
#     revision = "your-service-build-number" 
#     percent  = 10
#   }
#   traffic {
#     type     = "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"
#     revision = "your-service-name-00001-mnop" 
#     percent  = 10
#   }

