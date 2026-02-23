resource "google_compute_instance" "test_vm"{
    name = "test-vm-instance"
    zone = "us-central1-a"
    machine_type = var.machine_type
    boot_disk{
        initialize_params{
            image = "debian-cloud/debian-11"
        }
    }
    network_interface{
        network = "default"
        access_config {
          // Ephemeral IP
        }
        
    }
}


resource "google_storage_bucket" "test_bucket"{
    name = "project_id_test-bucket"
    location = "US"
    force_destroy = true
    public_access_prevention = "enforced"
}