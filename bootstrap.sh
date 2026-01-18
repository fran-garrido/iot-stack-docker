#!/bin/bash
set -e

echo "Iniciando instalación del Stack IoT (versión aula - todo local)..."

# Instalar Ansible si no está presente
if ! command -v ansible &> /dev/null; then
    sudo apt update && sudo apt install -y ansible
fi

# Crear carpetas de datos (por si acaso)
mkdir -p data/influxdb data/grafana data/mosquitto data/nodered data/telegraf

# Ejecutar el Playbook localmente
sudo ansible-playbook setup.yml -c local -i "localhost," --become

echo "Instalación completada."
echo "Accede a Portainer → https://localhost:9443"
echo "Usuario: admin    Contraseña: vdc_IoT2026!"
