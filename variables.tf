variable "project_id" {
  type    = string
  default = "summer-school-2024-427611"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "GOOGLE_APPLICATION_CREDENTIALS" {
  type      = string
  sensitive = true
}

