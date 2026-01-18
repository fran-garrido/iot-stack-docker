# IoT Stack Docker - Despliegue Automatizado

Este repositorio contiene un stack profesional de IoT (**Mosquitto, InfluxDB, Telegraf y Grafana**) con despliegue automatizado mediante **Ansible** y gestión visual a través de **Portainer**.

## 🚀 Instalación Rápida (Ubuntu Server)

Para desplegar todo el sistema en un servidor Ubuntu virgen, ejecuta el siguiente comando:

```bash
git clone [https://github.com/fran-garrido/iot-stack-docker.git](https://github.com/fran-garrido/iot-stack-docker.git) && \
cd iot-stack-docker && \
chmod +x bootstrap.sh && \
./bootstrap.sh



## 🔐 Credenciales de Acceso
Una vez finalizada la instalación, puedes acceder a los servicios con las siguientes credenciales:
Servicio,URL,Usuario,Contraseña
Portainer (Docker),https://IP:9443,admin,vdc_IoT2026!
Cockpit (Sistema),http://IP:9090,tu_usuario_linux,tu_pass_linux
Grafana (Dashboards),http://IP:3000,admin,vdc_IoT2026
InfluxDB (DB),http://IP:8086,admin,vdc_IoT2026
