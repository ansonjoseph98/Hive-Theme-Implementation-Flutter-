🌗 Hive Theme Implementation (Flutter)

A Flutter application demonstrating dynamic Light, Dark, and System theme switching using **Provider** state management and **Hive** for local theme persistence.

---

## 🚀 Features

- Light Mode
- Dark Mode
- System Default Mode
- Theme persistence using Hive
- Material 3 design
- Clean UI with selectable theme cards

---

## 🧠 What This Project Demonstrates

- State management using Provider
- Local data persistence using Hive
- Custom theme configuration using ThemeData
- Dynamic UI updates using ChangeNotifier
- Clean Flutter architecture

---

## 📂 Project Structure
lib/
│
├── main.dart
├── app_themes.dart
├── theme_provider.dart
└── home_screen.dart

## 📸 App Screenshots

### 🌞 Light Mode

<p align="center">
  <img src="https://raw.githubusercontent.com/ansonjoseph98/Hive-Theme-Implementation-Flutter-/c82df2083348412c1bde0507889a373a5a75763e/Screenshot_20260216-093652.png" width="300"/>
</p>

---

### 🌙 Dark Mode

<p align="center">
  <img src="https://raw.githubusercontent.com/ansonjoseph98/Hive-Theme-Implementation-Flutter-/c82df2083348412c1bde0507889a373a5a75763e/Screenshot_20260216-093700.png" width="300"/>
</p>


## ⚙️ Packages Used

```yaml
provider: ^6.0.0
hive: ^2.2.3
hive_flutter: ^1.1.0

🛠 How It Works
Hive initializes inside ThemeProvider.init()
Selected theme is stored inside a Hive box
When user selects a theme:
ThemeMode updates
Value is saved locally
UI rebuilds automatically
On app restart, saved theme loads automatically

