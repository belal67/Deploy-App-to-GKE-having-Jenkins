resource "google_service_account" "bastion-service-account" {
  account_id   = "bastion-service-account"
  display_name = "Service Account of Bastion"
}



