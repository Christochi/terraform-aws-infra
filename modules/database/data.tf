# renders a template from a template string
data "template_file" "ansible_bootstrap" {

  template = file("${path.module}/setup.yml")

  vars = {

    playbook = var.ansible-playbook

  }

}

# startup configuration utility for cloud compute instances
data "template_cloudinit_config" "config" {

  # change gzip, base64_encode to false to see output in plain text"
  gzip          = true
  base64_encode = true

  # Main cloud-config configuration file.
  part {

    filename     = "init.cfg"
    content_type = "text/x-shellscript"

    # templatefile fxn reads the file at the given path and renders its content 
    # as a template 
    content = templatefile(
      "${path.module}/script.sh",
      {
        yaml_file = data.template_file.ansible_bootstrap.rendered
      }
    )

  }

}