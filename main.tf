resource "google_compute_instance" "test_vm"{
    name = "test-vm-instance"
    zone = "us-central1-a"
    machine_type = var.machine_type
    boot_disk{
        initialize_parameter{
            image = "debian-ubuntu/debian-11"
        }
    }
    network_interface{
        initialize_parameter{
            network = "default"
        }
    }
}


resource "google_storage_bucket" "test_bucket"{
    name = "project_id_test-bucket"
    location = "US"
}