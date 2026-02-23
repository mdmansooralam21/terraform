output "bucket_name"{
    description = "The name of the GCS bucket created"
    value = google_storage_bucket.test_bucket.name
}

output "public_ip"{
    description = "The public IP address of the GCS bucket" 
    value = google_compute_instance.test_vm.network_interface.0.access_config.0.nat_ip
}