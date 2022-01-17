# startup configuration utility for cloud compute instances
data "template_cloudinit_config" "config" {

  gzip          = true
  base64_encode = true

  # Main cloud-config configuration file.
  part {

    filename     = "init.cfg"
    content_type = "text/x-shellscript"
    content = templatefile(
      "${path.module}/script.sh",
      {
        yaml_file = data.template_file.ansible_bootstrap.rendered
      }
    )

  }

}

# renders a template from a template string
data "template_file" "ansible_bootstrap" {

  template = file("${path.module}/setup-vault.yml")

}