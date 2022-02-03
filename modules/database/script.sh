#!/bin/bash -x
set -x

function create_config {
cat <<- _EOF_
${yaml_file}
_EOF_
}

export -f create_config
create_config > /etc/ansible/bootstrap.yml

sudo ansible-playbook /etc/ansible/bootstrap.yml