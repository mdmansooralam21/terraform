output "bucket_name"{
    description = "The name of the GCS bucket created"
    value = "google_storgae_bucket.test_bucket.bucket_name"
}

output "public_ip"{
    description = "The public IP address of the GCS bucket" 
    value = "google_compute_instance.test_vm.public_ip
}