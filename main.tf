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

resource "google_service_account" "cloud_run_invoker" {
  account_id   = "service-account-id"
  display_name = "Service Account"
}


#bind it to invoker role

