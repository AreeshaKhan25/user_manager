# User Manager App

**Student:** Areesha Khan
**Registration No.:** SP22-BSE-006
**University:** COMSATS University Islamabad
**Subject:** Mobile Application Development
**Technology:** Flutter & Dart with SQLite

---

## Overview

User Manager is a Flutter mobile application that provides complete student/user record management with local SQLite persistence. The app supports adding, searching, listing, and deleting user records — all stored on-device using the `sqflite` package.

---

## Features

- **Add User** — Form with full validation (name, registration number, course dropdown, email, phone)
- **Search Users** — Real-time live search across name, registration number, and course
- **All Users** — Alphabetically sorted list with expandable detail tiles
- **Delete User** — Confirmation dialog before permanent removal
- **Bottom Navigation** — Material 3 NavigationBar with state-preserving IndexedStack

---

## Screenshots

### Add User Form
![Add User with inputs](secreenshots/Add%20user%20with%20inputs.jpeg)

### Successful User Creation
![Successful user create message](secreenshots/Succesful%20user%20create%20Message.jpeg)

### All Users Page
![All Users Page](secreenshots/All%20user%20Page.jpeg)

### Search Page
![Search Page](secreenshots/Search%20Page.jpeg)

### Delete Confirmation Popup
![User Delete Popup](secreenshots/user%20Delete%20popup.jpeg)

### User Deleted Message
![User Delete Message](secreenshots/user%20Delete%20message.jpeg)

---

## Project Structure

```
user_manager/
├── lib/
│   ├── main.dart                  # App entry point & bottom navigation
│   ├── models/
│   │   └── user.dart              # User data model (toMap / fromMap)
│   ├── database/
│   │   └── db_helper.dart         # SQLite singleton helper
│   └── screens/
│       ├── add_user_screen.dart   # Add user form screen
│       ├── search_screen.dart     # Live search screen
│       └── all_users_screen.dart  # All users list screen
├── pubspec.yaml
└── android / ios / web / windows / linux / macos
```

---

## Database Schema

Table: `users`

| Column      | Type    | Constraint              |
|-------------|---------|-------------------------|
| id          | INTEGER | PRIMARY KEY AUTOINCREMENT |
| name        | TEXT    | NOT NULL                |
| regNumber   | TEXT    | NOT NULL, UNIQUE        |
| course      | TEXT    | NOT NULL                |
| email       | TEXT    | NOT NULL                |
| phone       | TEXT    | NOT NULL                |

---

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  sqflite: ^2.3.3+1
  path: ^1.9.0
  cupertino_icons: ^1.0.8
```

---

## Getting Started

1. **Clone the repository** and navigate to the project folder.
2. Run `flutter pub get` to install dependencies.
3. Connect a device or start an emulator.
4. Run `flutter run` to launch the app.

> **Note:** The app uses `sqflite` which requires Android or iOS. Web/desktop builds are not supported for SQLite.

---

## Architecture

The app follows a layered architecture:

- **Model Layer** — `User` class with SQLite serialization (`toMap` / `fromMap`)
- **Data Access Layer** — `DBHelper` singleton wrapping all SQL operations
- **Presentation Layer** — Three `StatefulWidget` screens consuming `DBHelper`

---

*COMSATS University Islamabad — Mobile Application Development Assignment*
*Areesha Khan | SP22-BSE-006*
