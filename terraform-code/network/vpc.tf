resource "google_compute_network" "vpc" {
  name                    = "myvpc"
  auto_create_subnetworks = false
  delete_default_routes_on_create = true
  routing_mode = "REGIONAL"
}