📄 **Read this file in:**  
🇵🇱 Polski • 🇬🇧 English • 🇯🇵 日本語

📇 Scroll down to see all language versions.

---

# 🧽 Projekt IT: Prywatna Chmura Nextcloud na Dockerze

## 🇵🇱 Opis projektu (PL)

Celem projektu było stworzenie **prywatnej chmury** opartej o kontenery Docker, przechowującej dane na zewnętrznym dysku, z pełną automatyzacją uruchamiania, ochroną przed błędami i możliwością zdalnego dostępu z SSL. Projekt wdrożony na Ubuntu Server, w pełni gotowy do użytku produkcyjnego.

### 🔧 Technologie
- Ubuntu Server (Dell XPS L702X)
- Docker + docker-compose
- Nextcloud + MariaDB
- Systemd automation
- Zewnętrzny dysk EXT4 (3TB)
- Reverse proxy (Caddy/Nginx – planowane)
- SSL Let's Encrypt (planowane)

### 🗂 Struktura

📁 **`/mnt/nextcloud-data`** – zewnętrzny dysk do przechowywania danych  
📄 **`start-nextcloud.sh`** – bezpieczny start po sprawdzeniu montowania dysku  
💡 Nadaj uprawnienia: `chmod +x start-nextcloud.sh`  
🛠 **`nextcloud.service`** – uruchamianie Nextclouda przez systemd  
💡 Uruchom automatycznie:
```bash
sudo cp nextcloud.service /etc/systemd/system/
sudo systemctl enable nextcloud.service
```

### 📸 Zrzuty ekranu
Zobacz [screenshots](./screenshots/) dla podglądu konfiguracji i działania.

### 📊 Status
Ukończony — gotowy do produkcji

---

## 🇬🇧 Project: Private Nextcloud Cloud with Docker

The goal was to build a **self-hosted private cloud** using Docker containers, storing all data on an external drive, with safety checks, systemd startup automation, and planned SSL support. Deployed on Ubuntu Server, production-ready.

### 🤧 Technologies
- Ubuntu Server (Dell XPS L702X)
- Docker + docker-compose
- Nextcloud + MariaDB
- Systemd automation
- External 3TB EXT4 disk
- Reverse proxy (Caddy/Nginx – planned)
- SSL via Let’s Encrypt (planned)

### 📂 Structure

📁 **`/mnt/nextcloud-data`** – external mounted data disk  
📄 **`start-nextcloud.sh`** – safe disk check before boot  
💡 Make executable: `chmod +x start-nextcloud.sh`  
🛠 **`nextcloud.service`** – systemd-controlled startup  
💡 Enable on boot:
```bash
sudo cp nextcloud.service /etc/systemd/system/
sudo systemctl enable nextcloud.service
```

### 📷 Screenshots
See [screenshots](./screenshots/) for setup and confirmation.

### 🔚 Status
Completed — production-ready

---

## 🇯🇵 プロジェクト：DockerによるプライベートNextcloudクラウド

このプロジェクトの目的は、Dockerを使用して**自家ホスト型プライベートクラウド**を構築することです。外付けドライブにデータを保存し、起動時のチェック、systemdによる自動起動、SSL付きリモートアクセスを実現しました。Ubuntu Serverに実装済みで、本番環境で利用可能です。

### 🔧 技術スタック
- Ubuntu Server　(Dell XPS L702X)
- Docker + docker-compose
- Nextcloud + MariaDB
- systemd 自動起動
- 3TB EXT4 外付けディスク
- 反転プロキシ (Caddy/Nginx 予定)
- Let's Encrypt によるSSL (予定)

### 📂 構成

📁 **`/mnt/nextcloud-data`** — 外付けマウント元  
📄 **`start-nextcloud.sh`** — 起動時のセーフチェックスクリプト  
💡 実行権限を付与: `chmod +x start-nextcloud.sh`  
🛠 **`nextcloud.service`** — systemdによる自動起動  
💡 起動時に自動実行:
```bash
sudo cp nextcloud.service /etc/systemd/system/
sudo systemctl enable nextcloud.service
```

### 📷 スクリーンショット
設定のステップや確認には [screenshots](./screenshots/) をご覧ください。

### 🔚 ステータス
完了済み — 本番環境対応
