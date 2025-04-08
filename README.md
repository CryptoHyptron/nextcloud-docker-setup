📄 **Read this file in:**  
🇵🇱 Polski • 🇬🇧 English • 🇯🇵 日本語

⬇️ Scroll down to see all language versions.


# 🧭 Projekt IT: Prywatna Chmura Nextcloud na Dockerze

## 🇵🇱 Opis projektu (PL)

Celem było stworzenie **prywatnej chmury** opartej o kontenery Docker, przechowującej dane na zewnętrznym dysku, z pełną automatyzacją uruchamiania, ochroną przed błędami i możliwością zdalnego dostępu z SSL. Projekt wdrożony na Ubuntu Server, w pełni gotowy do użytku produkcyjnego.

### 🔧 Technologie
- Ubuntu Server (Dell XPS L702X)
- Docker + docker-compose
- Nextcloud + MariaDB
- Systemd automation
- Zewnętrzny dysk EXT4 (3TB)
- Reverse proxy (Caddy/Nginx – planowane)
- SSL Let's Encrypt (planowane)

### 🗂 Struktura
- `/mnt/nextcloud-data` – zewnętrzny dysk na dane
- `start-nextcloud.sh` – bezpieczny start po sprawdzeniu dysku
- `nextcloud.service` – automatyzacja przez systemd

### 📸 Zrzuty ekranu
Zobacz [folder screenshots](./screenshots/) w repozytorium.

### ✅ Status: Ukończony

---

## 🇬🇧 Project: Private Nextcloud Cloud with Docker

The goal was to deploy a **self-hosted private cloud** using Docker, storing data on an external drive with safe startup checks, systemd automation, and remote access capability. Fully implemented and production-ready.

### 🔧 Stack
- Ubuntu Server (Dell XPS L702X)
- Docker + docker-compose
- Nextcloud + MariaDB
- Systemd automation
- External 3TB EXT4 disk
- Reverse proxy (Caddy/Nginx – planned)
- SSL via Let’s Encrypt (planned)

### 🧱 Structure
- `/mnt/nextcloud-data` – external mounted data disk
- `start-nextcloud.sh` – safe disk check before boot
- `nextcloud.service` – systemd-controlled startup

### 📸 Screenshots
Browse the [screenshots folder](./screenshots/) for setup steps and confirmation.

### ✅ Status: Completed

---

## 🇯🇵 プロジェクト：DockerによるプライベートNextcloudクラウド

このプロジェクトの目的は、Dockerを使って**自己ホスト型のプライベートクラウド**を構築し、外付けドライブにデータを保存、安全な起動チェック、systemdによる自動化、SSL付きリモートアクセスを実現することです。すでに本番環境として稼働可能なレベルで完成しています。

### 🔧 技術スタック
- Ubuntu Server（Dell XPS L702X）
- Docker + docker-compose
- Nextcloud + MariaDB
- systemd 自動起動
- 外付け3TB EXT4ディスク
- リバースプロキシ（Caddy/Nginx 予定）
- Let's Encrypt によるSSL（予定）

### 📂 構成
- `/mnt/nextcloud-data`：データ用の外付けマウント先
- `start-nextcloud.sh`：起動時の安全チェックスクリプト
- `nextcloud.service`：systemdサービスによる管理

### 📸 スクリーンショット
セットアップの手順と確認は [screenshots フォルダ](./screenshots/) をご覧ください。

### ✅ ステータス：完了済み

---

### 👤 Author
**Mateusz Wawrzonkiewicz**  
[LinkedIn](https://www.linkedin.com/in/mateusz-wawrzonkiewicz-0a92a5163) • `cryptohyptron@gmail.com`  
📍 Poland • 🌐 Remote-friendly
