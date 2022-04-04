resource "google_storage_bucket" "GCS1" {
   name = "tf-course-bucket-from-terraform-345009"
   storage_class = "NEARLINE"
   location = "US"
   labels = {
     "env" = "tf_env"
     "dep" = "compliance"
   }
   uniform_bucket_level_access = true
   lifecycle_rule {
     condition {
       age = 5
     }
     action {
       type = "SetStorageClass"
       storage_class = "COLDLINE"
     }
   }
   retention_policy {
     is_locked = true
     retention_period = 864000
   }
}


resource "google_storage_bucket_object" "picture" {
  name = "recife_bom_jesus"
  bucket = google_storage_bucket.GCS1.name
  source = "img_upload.jpg"
}