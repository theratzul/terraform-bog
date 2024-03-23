provider "aws" {
    region = "eu-north-1"
}

resource "aws_s3_bucket" "sweeden-bucket" {
    bucket = "theratzul2"

    tags   = {
        Name    = "Mybucket"
        Environment = "Production"
    }
}