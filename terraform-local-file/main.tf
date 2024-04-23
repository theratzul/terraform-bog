resource "local_file" "pet" {
    filename = "/home/bogdan/bogdan.txt"
    content = "We love pets"

    # A new resource will be created before deleting the old one
    lifecycle {
    create_before_destroy = true    
    }

}

resource "random_pet" "my-pet" {
    prefix = "Mr"
    separator = "."
    length = "1"

    # The resource is not deleted at apply but is deleted at destroy
    lifecycle {
        prevent_destroy = true
    }
}