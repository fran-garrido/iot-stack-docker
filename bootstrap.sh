#!/bin/bash
sudo apt update && sudo apt install -y ansible
# Descargamos el playbook que te he puesto arriba (puedes copiarlo a un archivo llamado setup.yml)
ansible-playbook setup.yml -c local -i "localhost," --become
