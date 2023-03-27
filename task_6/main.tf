provider "google" {
  project = "western-cascade-378410"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_instance" "dare-it-vm" {
  name         = "dareit-vm-tf"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["dareit"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        managed_by_terraform = "true"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}

resource "google_storage_bucket" "static" {
 project       = "western-cascade-378410"
 name          = "my-bucket-task6"
 location      = "US"
 storage_class = "STANDARD"

 uniform_bucket_level_access = true
}

resource "google_storage_bucket_iam_member" "member" {
  provider = google-beta
  bucket   = "my-bucket-task6"
  role     = "roles/storage.objectViewer"
  member   = "allUsers"
}


resource "google_sql_database_instance" "dareit-db-instance" {
  name             = "dareit-dbinstance-tf"
  region           = "asia-northeast1"
  database_version = "POSTGRES_14"
  root_password    = "abcABC123!"
  settings {
    tier = "db-custom-2-7680"
    password_validation_policy {
      min_length                  = 6
      reuse_interval              = 2
      complexity                  = "COMPLEXITY_DEFAULT"
      disallow_username_substring = true
      password_change_interval    = "30s"
      enable_password_policy      = true
    }
  }
  deletion_protection = false 
}

resource "google_sql_database" "dareit-db" {
  name     = "dareit"
  instance = "dareit-dbinstance-tf"
}

resource "random_password" "pwd" {
  length  = 8
  special = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "google_sql_user" "user" {
  name     = "dareit_user"
  instance = "dareit-dbinstance-tf"
  password = "xyzXYZ98!"
}
