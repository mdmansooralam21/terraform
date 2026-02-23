terraform {
  backend "gcs" {
    bucket  = "your-unique-bucket-name" # The name of the GCS bucket you created
    prefix  = "terraform/state"         # The folder path inside the bucket
  }
}