# 🚀 IoT Stack Docker - Despliegue Automatizado

![Ansible](https://img.shields.io/badge/Ansible-000000?style=for-the-badge&logo=ansible&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)

Este repositorio automatiza la instalación de un ecosistema IoT para pruebas de laboratorio mediante Ansible y Docker.

## ⚡ Instalación Rápida

Ejecuta este comando en tu terminal de Ubuntu Server:

```bash
git clone https://github.com/fran-garrido/iot-stack-docker.git && \
cd iot-stack-docker && \
chmod +x bootstrap.sh && \
./bootstrap.sh
```

---

## 🔐 Credenciales de Acceso

### 🐳 Portainer (Gestión de Contenedores)
- URL: https://IP-SERVIDOR:9443
- Usuario: admin
- Contraseña: vdc_IoT2026!

### 📊 Grafana (Dashboards)
- URL: http://IP-SERVIDOR:3000
- Usuario: admin
- Contraseña: vdc_IoT2026

### 🗄️ InfluxDB (Base de Datos)
- URL: http://IP-SERVIDOR:8086
- Usuario: admin
- Contraseña: vdc_IoT2026

### 💻 Cockpit (Administración Linux)
- URL: http://IP-SERVIDOR:9090
- Usuario: (Tu usuario de Linux)
- Contraseña: (Tu contraseña de Linux)

### 🟢 Node-RED 
- URL: http://IP:1880
- 
---

## 🛠️ Servicios Desplegados
- Mosquitto: Broker MQTT (Puerto 1883)
- InfluxDB 2.7: Almacenamiento de datos
- Telegraf: Colector de métricas
- Grafana: Visualización
- Portainer CE: Panel de control web
- Node-RED: Motor de flujos para lógica IoT
---

## 📁 Estructura de Datos
Los datos persistentes se guardan en: /opt/iot-stack/
- /opt/iot-stack/influxdb
- /opt/iot-stack/mosquitto
- /opt/iot-stack/grafana
- /opt/iot-stack/telegraf
- /opt/iot-stack/nodered

---

## 🔄 Cómo Actualizar
Para aplicar cambios realizados en el repositorio:
1. Desde Portainer: Ve a Stacks > iot-stack y pulsa "Pull and redeploy".
2. Desde Terminal: Ejecuta nuevamente ./bootstrap.sh
