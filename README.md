# CI-CD-app
Status of Last Deployment:<br>
[![homework-CI](https://github.com/3ugol/CI-CD-app/actions/workflows/main.yml/badge.svg)](https://github.com/3ugol/CI-CD-app/actions/workflows/main.yml)
<br>
[Site weather Go](https://hw.drg.pp.ua)
<br>
# CI-CD App 🐳🚀

Цей проєкт демонструє повний CI/CD-процес:
- Збірка Docker-образу
- Завантаження на Docker Hub
- Автоматичне розгортання на віддаленій машині

## 🔧 Стек технологій

- Docker
- GitHub Actions
- Docker Hub
- Віртуальна машина (hw.drg.pp.ua)

## 🚀 CI/CD процес

1. **Push у гілку `main`**
2. GitHub Actions:
   - Збирає Docker-образ
   - Завантажує його на Docker Hub
   - Підключається до віддаленого сервера `hw.drg.pp.ua` по SSH
   - Завантажує останній образ та запускає контейнер
   - Перевіряє, чи повертає додаток HTTP 200

## 🐳 Локальний запуск

```bash
docker build -t demo-app .
docker run -p 80:80 demo-app

### 🔐 Secrets (у GitHub → Settings → Secrets and variables)
Назва	Опис
DOCKERHUB_USERNAME	Логін до Docker Hub
DOCKERHUB_TOKEN	Токен доступу до Docker Hub
DEPLOY_KEY	Приватний SSH ключ
KNOWN_HOSTS	SSH ключ хоста (ssh-keyscan hw.drg.pp.ua)
USER	Ім’я користувача на сервері
HOST	IP або DNS сервера (hw.drg.pp.ua)

###⚙️ Серверні вимоги
На сервері має бути:

Docker
Відкритий порт 22 (SSH)
Доступ по ключу з GitHub Actions
(Опційно) docker-compose, якщо ви плануєте використовувати його

Copyleft by 3ugol 2025.
