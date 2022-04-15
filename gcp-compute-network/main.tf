terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "google" {
  credentials = file("learn-terraform-347316-40666c123c94.json")
  project     = "learn-terraform-347316"
  region      = var.vm_region
  zone        = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "semaphore-network"
}

resource "google_compute_instance" "semaphore_vm" {
  name         = var.vm_name
  machine_type = "f1-micro"
  tags         = ["web", "dev"]

  boot_disk {
    initialize_params {
      image = var.vm_image
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {

    }
  }
}