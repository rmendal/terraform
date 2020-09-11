# Base remote state config for s3
remote_state {
    backend = "s3"
    config  = {
        bucket         = "my-bucket"
        key            = "${path_relative_to_include()}/terraform.tfstate"
        region         = "us-east-2"
        encrypt        = true
        dynamodb_table = "my-lock-table"
    }
}