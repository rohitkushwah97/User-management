# 🚀 Rails 7 API Application

This is a **Ruby on Rails 7 API-only application** built with production-level best practices including JWT authentication, background jobs, and scalable architecture.

---

## 📌 Ruby & Rails Version

- Ruby: 3.0.0  
- Rails: 7.x (API Mode)

---

## 🧰 System Dependencies

Make sure the following are installed:

- Ruby 3.0.0
- Rails 7.x
- PostgreSQL / MySQL
- Redis (for background jobs)
- Node.js (optional)

---

## ⚙️ Setup Instructions

Follow these steps to setup the project locally:

```bash
# 1. Clone the repository
git clone <repository_url>
cd <project_name>

# 2. Install dependencies
bundle install

# 3. Setup database
rails db:create
rails db:migrate

# 4. Seed data (optional)
rails db:seed

# 5. Start the server
rails s