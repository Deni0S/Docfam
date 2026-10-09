# DocFam / Home Documents **[🇷🇺 Rus](./README.RU.md)**
[![Status](https://img.shields.io/badge/status-deprecated-red)](#)
[![Purpose](https://img.shields.io/badge/purpose-educational%20%2F%20history-blue)](#)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)

> **This project is no longer maintained.**
> It is kept as an educational subproject for reference and historical purposes. 
> The code may be incomplete, outdated, or contain educational simplifications.

**FamDoc** — an application for storing and organizing a family's home documents. All important papers — passports, certificates, policies, contracts, receipts — in one place, with a convenient structure and quick search. The app is designed so that every family can keep their documents in order. Instead of scattered folders and paper archives — a single digital storage with a clear hierarchy: **family → family member → document category → the document itself**.

## Screenshots
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="Screens/Screenshot_1_Dark.png">
  <source media="(prefers-color-scheme: light)" srcset="Screens/Screenshot_1_Light.png">
  <img alt="Authorization" src="Screens/Screenshot_1_Dark.png" width="250">
</picture>
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
| **SwiftUI** | Declarative interface, single codebase for iOS and macOS |
| **Apple Sign-In** | Passwordless user authentication |
| **Swift** | Primary development language |
| **Combine** | Reactive data processing |
| **CloudKit** | Document synchronization between devices |

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