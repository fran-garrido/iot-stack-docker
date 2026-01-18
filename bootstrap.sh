#!/bin/bash
set -e

echo "Iniciando instalación del Stack IoT..."

# Instalar Ansible si no está presente
if ! command -v ansible &> /dev/null; then
    sudo apt update && sudo apt install -y ansible
fi

# Ejecutar el Playbook localmente
sudo ansible-playbook setup.yml -c local -i "localhost," --become

echo "Instalación completada con éxito."
echo "Accede a Portainer en https://localhost:9443 (Usuario: vdc / Contraseña: vdc_IoT2026!)"
