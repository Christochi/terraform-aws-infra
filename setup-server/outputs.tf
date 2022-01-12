output "instance-data" {

    value = {
       subnet= module.instance.subnet-data
       ami = module.instance.custom-ami
    }

    description = "display subnet id, ami id and ami name"

}