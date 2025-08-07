# Flask + Redis Web App (Visit Counter)

This project is a simple Dockerized web app that counts how many times the page is visited. It uses:

- A **Flask web server** (Python)
- A **Redis key-value store** (for storing the counter)
- Docker containers for isolation and persistence

---

## 📦 Deployment Requirements

To run this app, you need:

- Docker
- Docker Compose (or use the provided `.sh` scripts)
- Bash terminal (Linux/macOS or Git Bash on Windows)

---

## 🌐 Application Description

This app:
- Displays a webpage showing how many times it's been visited
- Uses Redis to persist the count even after containers are restarted
- Uses a Docker volume to store Redis data
- Has both services connected via a Docker network

---

## 📡 Network and Volume Setup

- **Network**: `app-network` (custom bridge network so services can communicate)
- **Volume**: `redis-data` (persistent volume to store Redis state)

---

## 🐚 How to Use the Scripts

### 🛠️ Step 1: Make scripts executable
```bash
chmod +x *.sh

