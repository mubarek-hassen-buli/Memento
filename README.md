# Memento

📝 **Memento** is a beautiful, privacy-first journal & diary app designed for people who value simplicity, minimalism, and complete control over their personal memories.

---

## 🌟 Key Features

- **Timeline journaling** – your life flows naturally without complex folders or rigid structures.
- **Dedicated tablet UI** – optimized responsive layouts for tablets and large screens.
- **Rich text formatting** – headings, bold, italic, lists, checklists, colors, and 1,300+ Google Fonts.
- **Throwback memories** – revisit what you wrote on this day in past years.
- **Photo & video memories** – attach multiple photos and videos per entry with clean collage layouts.
- **Feelings & mood tracker** – 45+ emotions, mood trends, and interactive calendar views.
- **Multi-page entries** – split long entries into chapters or discrete pages.
- **Tags, stars & search** – organize your moments and find them instantly with full-text search.
- **Privacy first** – secure your journal with PIN code, fingerprint, or Face Unlock; data stays on your device.
- **Multi-cloud backup & sync** – direct device-to-cloud backup with Google Drive, iCloud Drive, Dropbox, or self-hosted Nextcloud/WebDAV.
- **Themes & customization** – 20+ color schemes, adaptive dark/light modes, custom backgrounds, and app icons.
- **Full export options** – export your stories to JSON, Markdown, Plain Text, CSV, or PDF, complete with media attachments.
- **Memento Pro**:
  - **Themed Backgrounds** – personalize your writing space with curated background illustrations.
  - **Writing Templates** – create reusable templates or pick from pre-built guided templates.
  - **Relaxing Sounds** – stream or download calming ambient audio while writing or reading.
  - **Period Calendar** – track menstrual cycles and log health symptoms.
  - **Voice Notes** – record audio reflections and save them directly in your entries.
  - **Writing Insights & Stats** – detailed word counts, active streaks, and emotional trends.
  - **Pinned Notes** – pin your most meaningful entries to the top of your timeline.
- **Multilingual** – localized in 20 languages.

---

## ⚙️ Setup & Run

### Prerequisites

Ensure you have the following installed:

- **Flutter**: 3.29.x or newer
- **Java**: JDK 17 or JDK 21 (LTS) for Android
- **Ruby**: 3.3.x (for iOS / macOS CocoaPods)

### Running with Airreload (Wireless / No Cable)

```powershell
airreload run --target lib/main_community.dart --flavor community --dart-define-from-file bin/.tmp/private_keys/dart_defines/community.json
```

### Running with Flutter CLI

```powershell
# Android
flutter run -t lib/main_community.dart --flavor community --dart-define-from-file bin/.tmp/private_keys/dart_defines/community.json

# iOS
flutter run -t lib/main_community.dart --flavor community --dart-define-from-file bin/.tmp/private_keys/dart_defines/community.json

# macOS
flutter run -t lib/main_community.dart -d macos --dart-define-from-file bin/.tmp/private_keys/dart_defines/community.json
```

---

## 🛠 Architecture & Tech Stack

Memento is engineered with simplicity, high performance, and strict separation of concerns:

### 1. State Management
- **Global State**: Scoped via `ProviderScope` (`lib/provider_scope.dart`), managing app-wide services (preferences, backups, in-app purchases).
- **View State**: Scoped with `ChangeNotifierProvider` (`package:provider`), bound strictly to the page lifecycle.
- **Local Widget State**: Handled with `StatefulWidget` or lightweight reactive wrappers for localized animations and UI interactions.

### 2. MVVM Pattern
Each view is cleanly modularized into:
- **Route**: Declares navigation parameters and transitions (`BaseRoute`).
- **View**: Configures and binds the ViewModel to the widget tree.
- **ViewContent**: Pure presentation layer decoupled from business logic.
- **ViewModel**: Manages business logic, state mutations, and service orchestration.

### 3. Local High-Performance Database
Memento utilizes **ObjectBox** as its embedded local database engine. ObjectBox provides sub-millisecond query execution, zero-overhead object persistence, and instant offline indexing without relying on heavy SQL abstractions.

---

## 🔗 Connect with the Creator

- 💼 **LinkedIn:** [Mubarek Hassen](https://www.linkedin.com/in/mubarek-hassen-bul)
- 𝕏 **X (Twitter):** [@mubarek_hb](https://x.com/mubarek_hb)
- 📸 **Instagram:** [@focustillrich1](https://www.instagram.com/focustillrich1)
- ✈️ **Telegram:** [@mubarek_h](https://t.me/mubarek_h)
