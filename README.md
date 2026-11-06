
![alt text](https://file%2B.vscode-resource.vscode-cdn.net/var/folders/cj/bv57826144x_d6zy63vnqxl80000gn/T/TemporaryItems/NSIRD_screencaptureui_FV8K2Q/Ekran%20Resmi%202026-11-06%2012.24.49.png?version%3D1793957093837)


<div align="center">

# 🚀 Geliştirici Paneli (blog-app)

**A developer platform for job listings and blog posts, built with Ruby on Rails 8 and Hotwire**

![Ruby on Rails](https://img.shields.io/badge/Rails-8.1-CC0000?logo=rubyonrails&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-003B57?logo=sqlite&logoColor=white)
![Hotwire](https://img.shields.io/badge/Hotwire-Turbo%20%26%20Stimulus-1F2937)
![Docker](https://img.shields.io/badge/Deploy-Kamal-2496ED?logo=docker&logoColor=white)

![Job listings page](docs/screenshots/home.png)

</div>

## 📖 About

Geliştirici Paneli is a full-stack Rails application where developers
can browse and post job listings filtered by category, and read blog
posts. Users can register and log in to manage their own content.
Built to practice authentication, relational data modeling and the
Hotwire frontend approach.

## ✨ Features

| Feature | Description |
|---|---|
| 💼 Job listings | Browse all listings with company name and details page |
| 🗂 Category filter | Filter by Backend, Frontend, Design and Marketing |
| ➕ Post a job | Logged-in users can add new job listings |
| 📝 Blog posts | Dedicated section for developer blog posts |
| 🔐 Authentication | Register, log in and log out with Devise |
| ⚡ Fast UX | Turbo-powered navigation without full page reloads |

## 🛠 Tech Stack

- **Backend:** Ruby on Rails 8.1, Devise, Kaminari
- **Frontend:** Hotwire (Turbo, Stimulus), Importmap, Propshaft, Simple Form
- **Database:** SQLite
- **Background / Cache / Realtime:** Solid Queue, Solid Cache, Solid Cable
- **Deployment:** Docker, Kamal, Thruster
- **Code quality:** RuboCop (Omakase), Brakeman, Bundler Audit

## 🚀 Getting Started

### Prerequisites
- Ruby [sürüm]
- Bundler

### Installation

​```bash
git clone https://github.com/Farukpolat1/blog-app.git
cd blog-app
bundle install
bin/rails db:setup
bin/rails server
​```

Open [http://localhost:3000](http://localhost:3000).

## 🧠 What I Learned
- [Devise ile kimlik doğrulama kurmayı]
- [Kategoriye göre filtrelemeyi]
- [senin gerçekten öğrendiğin bir şey]

## 👤 Author

**Faruk Polat**
[GitHub](https://github.com/Farukpolat1) · [LinkedIn](https://www.linkedin.com/in/faruk-polat-b23398384)