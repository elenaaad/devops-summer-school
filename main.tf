# INSERT YOUR CODE HERE 👇🏻
# create a Cloud Run resource

resource "google_cloud_run_v2_service" "first_service" {
  name     = "cloudrun-service"
  location = "us-central1"
  ingress  = "INGRESS_TRAFFIC_ALL"

  template {
    containers {
      image = "us-docker.pkg.dev/cloudrun/container/hello"
      resources {
        limits = {
          cpu    = "1"
          memory = "1024Mi"
        }
      }
    }
  }
}

# create a Service Account resource

resource "google_service_account" "cloud_run_invoker_sa" {
  account_id   = "cloud-run-invoker"
  display_name = "Cloud Run Invoker"
  project      = var.project_id
}

#bind it to invoker role

resource "google_service_account_iam_binding" "run_invoker_binding" {
  service_account_id = google_service_account.cloud_run_invoker_sa.name
  role               = "roles/run.invoker"
  members            = ["serviceAccount:${google_service_account.cloud_run_invoker_sa.email}"]
}