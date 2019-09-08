#/bin/bash -xe

install_ansible () {
  apt-get update -q
  apt-get install -yq python-pip
  pip install ansible
}
install_git () {
  apt-get update -q
  apt-get install -yq git
}


[ -z "$(which ansible)" ] && install_ansible
[ -z "$(which git)" ] && install_git


ansible-pull --accept-host-key --clean --directory=/etc/ansible/roles/egeneralov.sshd_config/ --url=https://github.com/egeneralov/sshd_config.git /etc/ansible/roles/egeneralov.sshd_config/local.yml
