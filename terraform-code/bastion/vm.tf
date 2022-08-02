resource "google_compute_instance" "bastion" {
  name         = "bastion-vm"
  machine_type = var.machine_type
  zone         = var.zone
  project = var.project_id
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    subnetwork = var.subnetwork

  }

  service_account {
    email  = google_service_account.bastion-service-account.email
    scopes = ["cloud-platform"]
  }

  tags         = ["bastion"]
}