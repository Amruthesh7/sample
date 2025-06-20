﻿# Mini Project
# 🌌 Dreamy Night Sky 🌙

A simple animated HTML/CSS/JS project that displays a glowing moon, twinkling stars, and a poetic night sky experience.

---

## 📁 Clone This Repository


git clone https://github.com/Amruthesh7/sample.git
cd sample

🚀 CI/CD Pipeline (GitHub Pages)
This project uses GitHub Pages to auto-deploy every time you push to the main branch.

✅ Setup GitHub Pages:
Go to your GitHub repo → Settings.

Scroll down to "Pages".

Set:

Branch = main

Folder = / (root)

Click Save.

Your site will be live at:

✅ GitHub Actions Workflow (Optional)
To automate deployment (e.g., if using a build tool like React/Vite), you can add this .github/workflows/deploy.yml:

yaml
Copy
Edit
name: Deploy to GitHub Pages

on:
  push:
    branches:
      - main

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3

      - name: Deploy static site
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./
For plain HTML/CSS/JS, GitHub Pages from the root folder is usually enough.
