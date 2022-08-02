output "vpc" {
  value = google_compute_network.vpc
}

output "management-subnet-network" {
  value = google_compute_subnetwork.management-subnet
}

output "restricted-subnet-network" {
  value = google_compute_subnetwork.restricted-subnet
}