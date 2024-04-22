resource "local_file" "pet" {
    filename = "/home/bogdan/bogdan.txt"
    content = "We love pets"
}

resource "random_pet" "my-pet" {
    prefix = "Mr"
    separator = "."
    length = "1"
}