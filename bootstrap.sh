#!/bin/bash
set -e

echo "Iniciando instalación del Stack IoT (versión aula - todo local)..."

# Instalar Ansible si no está presente
if ! command -v ansible &> /dev/null; then
    sudo apt update && sudo apt install -y ansible
fi


mkdir -p mosquitto/data mosquitto/log \
         influxdb/data influxdb/config \
         telegraf grafana/data grafana/provisioning \
         nodered  # si lo usas después

sudo chmod -R 777 mosquitto influxdb telegraf grafana nodered

# Ejecutar el Playbook localmente
sudo ansible-playbook setup.yml -c local -i "localhost," --become

echo "Instalación completada."
echo "Accede a Portainer → https://localhost:9443"
echo "Usuario: admin    Contraseña: vdc_IoT2026!"
