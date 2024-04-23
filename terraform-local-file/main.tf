resource "local_file" "pet" {
   # filename = "/home/bogdan/bogdan.txt"
    filename = var.filename[count.index]
    #count    = 3
    count   = length(var.filename)
    content = "We love pets"

    # A new resource will be created before deleting the old one
    lifecycle {
    create_before_destroy = true    
    }

}

output "pets" {
    value = local_file.pet
    sensitive = true
    # sensitive, to confirm your intent.
}

resource "random_pet" "my-pet" {
    prefix = "Mr"
    separator = "."
    length = "1"

    # The resource is not deleted at apply but is deleted at destroy
    lifecycle {
        prevent_destroy = true
       # ignore_changes = [tags]
    }


}

data "local_file" "dog" {
    filename = "/home/bogdan/bogdan.txt"
}