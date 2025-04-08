### **🧭 Technical Project: Deploying a Private Nextcloud Instance via Docker**

📅 **Date**: April 2025
👤 **Name**: Mateusz Wawrzonkiewicz
📞 **Phone**: +48 666856346
📍 **Location**: Poland (remote work possible)
🛠️ **Role**: Systems Engineer / Linux Admin / DevOps

### 📑 Table of Contents

1. [🎯 Introduction](#1-introduction)  
2. [🖥️ System and Environment](#2-system-and-environment)  
3. [📦 External Disk Mount](#3-disk-mount)  
4. [🐳 Docker and Compose Installation](#4-docker-and-compose-installation)  
5. [🛠️ Container Configuration](#5-container-configuration)  
6. [🛡️ Safe Startup (Disk Protection)](#6-safe-startup-disk-check)  
7. [⚙️ Automation (systemd)](#7-automation-systemd)  
8. [🌐 Subdomain and SSL Setup](#8-subdomain-and-ssl-setup)  
9. [💻 Nextcloud Desktop and Sync](#9-nextcloud-desktop-and-sync)  
10. [🧹 Cleanup and Optimization](#10-cleanup-and-optimization)  
11. [✅ Testing, Reboot, Production](#11-testing-reboot-production)

------

🎯 **1. Introduction**
The goal was to create a private cloud based on Docker containers, with a focus on automation, data security, and the ability to expand with remote access via SSL.

🛠️ **2. System and Environment**
• Ubuntu Server installed on a Dell laptop with a 120 GB SSD
• System user: hyptronic
• Static IP: 192.168.0.90 (for both Wi-Fi and LAN)
• No active dual boot with Windows – fully independent system

💽 **3. Disk Mount**
• External 3TB disk (EXT4), partition sdc3
• Mounted to `/mnt/nextcloud-data`
• Entry in `/etc/fstab`:
  `UUID=xxx /mnt/nextcloud-data ext4 nofail,x-systemd.automount 0 2`
• Alias `ncdata` added to `.bashrc` for quick access

🐳 **4. Docker and Compose Installation**

```
lua


sudo apt update && sudo apt install docker.io docker-compose -y
```

🧩 **5. Container Configuration**
• Directory created: `/home/hyptronic/nextcloud-docker`
• `docker-compose.yml` includes:
 ◦ nextcloud
 ◦ mariadb
• Data volume directed to `/mnt/nextcloud-data`

🛡️ **6. Safe Startup (Disk Check)**
Script: `start-nextcloud.sh`

```
bash


if mountpoint -q /mnt/nextcloud-data; then
  cd /home/hyptronic/nextcloud-docker
  /usr/bin/docker compose up -d
else
  echo "Disk NOT connected – not starting."
fi
```

🔁 **7. Automation (systemd)**
File: `/etc/systemd/system/nextcloud.service`

```
ini


[Unit]
Description=Start Nextcloud safely when disk is present
After=network.target local-fs.target
RequiresMountsFor=/mnt/nextcloud-data

[Service]
Type=oneshot
User=root
ExecStart=/home/hyptronic/nextcloud-docker/start-nextcloud.sh
RemainAfterExit=true

[Install]
WantedBy=multi-user.target
```

Activation:

```
bash


sudo systemctl daemon-reload  
sudo systemctl enable nextcloud.service
```

🌐 **8. Subdomain and SSL**
• Reserved subdomain: `cloud.xxxxxxxxxxx.com`
• Waiting for DNS propagation (OVH)
• Target setup: SSL certificate via Let’s Encrypt (reverse proxy with Caddy or Nginx)

🖥️ **9. Desktop Client**
• Nextcloud Desktop Client installed on Ubuntu
• Syncing selected folders only
• Data may be stored on NTFS partitions, external drives, desktop

🧹 **10. Cleanup and Optimization**
• Removed folders: Templates, Talk, Mothers Day, etc.
• Command used:

```
lua


php occ files:scan --all
```

✅ **11. Final Testing**
• Startup blocked if disk is missing
• Automatic restart of Nextcloud after reconnection
• Successful sync between desktop and server
• No data was overwritten
• Stability confirmed after full system reboot

------

🧾 **Project Summary**
The project is production-ready – fully automated, secure, and synchronized.

📝 **Status**: Completed
🔒 **Type**: Private / Demo Project
