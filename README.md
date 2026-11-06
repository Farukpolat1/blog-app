<div align="center">

# 🚀 Geliştirici Paneli (blog-app)

**A developer platform for job listings and blog posts, built with Ruby on Rails 8 and Hotwire**

![Ruby on Rails](https://img.shields.io/badge/Rails-8.1-CC0000?logo=rubyonrails&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-003B57?logo=sqlite&logoColor=white)
![Hotwire](https://img.shields.io/badge/Hotwire-Turbo%20%26%20Stimulus-1F2937)
![Docker](https://img.shields.io/badge/Deploy-Kamal-2496ED?logo=docker&logoColor=white)

<img width="1512" alt="Job listings page" src="https://github.com/user-attachments/assets/8db77ea0-7e48-49e1-8519-ac922ae18c34" />

</div>

## 📖 About

Geliştirici Paneli is a full-stack Rails application where developers
can browse job listings by category and read blog posts. Registered
users can log in and add new listings. I built it to practice
authentication, relational data modeling and the Hotwire frontend
approach.

## ✨ Features

| Feature | Description |
|---|---|
| 💼 Job listings | Browse all listings with company name and a details page |
| 🗂 Category filter | Filter by Backend, Frontend, Design and Marketing |
| ➕ Post a job | Add new job listings from the interface |
| 📝 Blog posts | Dedicated section for developer blog posts |
| 🔐 Authentication | Register, log in and log out with Devise |
| ⚡ Fast navigation | Turbo-powered page transitions without full reloads |

## 🛠 Tech Stack

- **Backend:** Ruby on Rails 8.1, Devise
- **Frontend:** Hotwire (Turbo, Stimulus), Importmap, Propshaft
- **Database:** SQLite
- **Background / Cache / Realtime:** Solid Queue, Solid Cache, Solid Cable
- **Deployment:** Docker, Kamal, Thruster
- **Code quality:** RuboCop (Omakase), Brakeman, Bundler Audit

## 🚀 Getting Started

### Prerequisites
- Ruby 3.2 or newer
- Bundler

### Installation

```bash
git clone https://github.com/Farukpolat1/blog-app.git
cd blog-app
bundle install
bin/rails db:setup
bin/rails server
```

Then open [http://localhost:3000](http://localhost:3000).

## 🧠 What I Practiced

- Setting up authentication with Devise
- Building category-based filtering for listings
- Using Hotwire (Turbo and Stimulus) for a fast, SPA-like experience
- Working with Rails 8's Solid Queue, Cache and Cable defaults

## 👤 Author

**Faruk Polat**
[GitHub](https://github.com/Farukpolat1) · [LinkedIn](https://www.linkedin.com/in/faruk-polat-b23398384)
