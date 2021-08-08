
resource "google_data_loss_prevention_job_trigger" "basic-hybrid-job" {
    parent          = "projects/${var.project}"
    description     = "Reoccuring search on hybrid datasource"
    display_name    = "Sample Hybrid Job"

    inspect_job {
        inspect_template_name = google_data_loss_prevention_inspect_template.basic.id
        actions {
            save_findings {
                output_config {
                    table {
                        project_id = var.project
                        dataset_id = split("/", var.bq_output_dataset_id)[3]
                    }
                }
            }
        }
        storage_config {
            hybrid_options {
            }
        }
    }
}
