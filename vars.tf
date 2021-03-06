variable "project" {
  default = "probable-bebop-315904"
}

variable "location" {
  default = "US"
}

variable "unique_label" {
  default = "26b63b4c"
}

variable "dlp_job_trigger_schedule" {
  description = "How frequent DLP trigger should run"
  default = "604800s" /* 1 week */
}

variable "cloudstorage_input_bucket_name" {
  default = "hsg-dlp-bucket-abcdefg"
}

variable "input_bq_dataset_id" {
  default = "hsg_dlp_bq_dataset"
}

variable "input_bq_table_id" {
  default = "hsg_dlp_bq_table"
}

variable "datastore_input_kind" {
  default = "person"
}

variable "output_bq_dataset_id" {
  default = "hsg_dlp_output_dataset"
}
