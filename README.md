# DocFam / Home Documents
[![Type](https://img.shields.io/badge/type-pet%20project-blueviolet)](#)
[![Status](https://img.shields.io/badge/status-deprecated-red)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Year](https://img.shields.io/badge/year-2021-lightgrey)](#)

> **This project is no longer maintained.**
> It is kept as an educational subproject for reference and historical purposes. 
> The code may be incomplete, outdated, or contain educational simplifications.

An application for storing and organizing a family's home documents. All important papers — passports, certificates, policies, contracts, receipts — in one place, with a convenient structure and quick search. The app is designed so that every family can keep their documents in order. Instead of scattered folders and paper archives — a single digital storage with a clear hierarchy: **family → family member → document category → the document itself**.

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="Screens/Screenshot_1_Dark.png">
  <source media="(prefers-color-scheme: light)" srcset="Screens/Screenshot_1_Light.png">
  <img alt="Authorization" src="Screens/Screenshot_1_Dark.png" width="250">
</picture>
&nbsp;&nbsp;&nbsp;
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="Screens/Screenshot_2_Dark.png">
  <source media="(prefers-color-scheme: light)" srcset="Screens/Screenshot_2_Light.png">
  <img alt="Home page" src="Screens/Screenshot_2_Dark.png" width="250">
</picture>

## Features
- 📁 **Document hierarchy** — family, family members, categories, files
- 🔍 **Quick search** — by name, category, or date
- 🔐 **Sign in with Apple** — secure, without passwords or registration
- ☁️ **Synchronization** between the user's devices
- 🖼️ **View scans** and photos of documents
- 📌 **Favorites** — the most needed documents at hand
- 🏷️ **Categories** — passports, policies, certificates, contracts, receipts
- 🗂️ **Sorting** — by date, name, category

## Technologies
| Technology | Purpose |
|------------|---------|
| **Apple Sign-In** | Passwordless user authentication |
| **Swinject** | Внедрение зависимостей (DI) |
| **MVVM** | Architectural pattern: Model - View - ViewModel |

### Why Apple Sign-In
- 🔒 **Security** — Apple does not share personal data with the app
- ⚡ **Speed** — one-tap sign-in, no password entry
- 🙈 **Privacy** — you can hide your real email (Hide My Email feature)
- 🔗 **Cross-platform** — works on iPhone, iPad, Mac
- ✅ **Trust** — users more often choose apps with Sign in with Apple

## Advantages
- 🚧 All family documents in one place
- 🚧 No need to remember where the paper is
- 🚧 Works without internet — data is stored locally
- 🚧 Synchronization via iCloud
- 🚧 Secure sign-in with Apple ID
- 🚧 Clear interface for any age
- 🚧 Unified style for iPhone and Mac