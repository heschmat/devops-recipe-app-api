variable "tf_state_bucket" {
    description = "AWS S3 Bucket name for storing TF state"
    default = "udemy-devops-tf-"
}

variable "tf_state_lock_table" {
    description = "AWS DynamoDB table name for TF state locking"
    default = "udemy-devops-tf-lock"
}

variable "project" {
    description = "Project name for tagging resources"
    default = "drf_recipe_app"
}

variable "contact" {
    description = "Contact name for tagging resources"
    default = "admin@example.com"
}
