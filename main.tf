# INSERT YOUR CODE HERE 👇🏻
# create a Cloud Run resource

resource "google_cloud_run_v2_service" "summer_school" {
  name     = "cloudrun-service"
  location = "us-central1"
  ingress = "INGRESS_TRAFFIC_ALL"

  template {
    containers {
      image = "us-docker.pkg.dev/cloudrun/container/hello"
      resources {
        limits = {
          cpu    = "2"
          memory = "1024Mi"
        }
      }
    }
  }
}


# create a Service Account resource


#bind it to invoker role

