terraform {
    backend "s3" {
        dynamodb_table = "infrastructure_state_lock" #
        bucket = "backend-lesson2-state" #
        region = "us-east-1" #
        key = "infrastructure.tfstate" #was taken from terraform.tfstate
    }
}