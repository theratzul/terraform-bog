provider "aws" {
    region = "eu-north-1"
}

resource "aws_s3_bucket" "bucket" {
    bucket = "theratzul2"

    tags   = {
        Name    = "Mybucket"
        Environment = "Production"
    }
}

resource "aws_s3_object" "provision_source_files" {
    bucket = aws_s3_bucket.bucket.id

    for_each = fileset("myapp/", "**/*.*")
    key = each.value
    source = "myapp/${each.value}"
    content_type = each.value
}