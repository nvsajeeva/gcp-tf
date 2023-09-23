provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_sql_database_instance" "cloudsql1" {
  name             = "cloudsql1"
  database_version = "MYSQL_8_0"
  deletion_protection = false
  settings {
    tier    = "db-f1-micro"
    ip_configuration {
      authorized_networks {
        name  = "ALL"
        value = "0.0.0.0/0"
      }
    }
    backup_configuration {
      enabled = true
      binary_log_enabled = true
    }
    availability_type = "ZONAL"
  }
}