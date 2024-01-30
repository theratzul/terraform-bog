provider "aws" {
    access_key = "${var.accesskey}"
    secret_key = " "
    region = " "

}

resource "aws_instance" "example" {
    ami = "ami-ad493bce"
    instance_type = "t2.micro"
}
