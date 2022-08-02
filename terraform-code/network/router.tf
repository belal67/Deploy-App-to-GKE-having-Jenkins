resource "google_compute_router" "router" {
  name    = "vm-router"
  region = var.region
  network = google_compute_network.vpc.id
  
}

resource "google_compute_route" "internet-route" {
  name             = "internet-route"
  dest_range       = "0.0.0.0/0"
  network          = google_compute_network.vpc.id
  next_hop_gateway = "default-internet-gateway"
}