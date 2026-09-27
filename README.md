# MyCampus - Flutter Developer Challenge

Welcome to **MyCampus**! This is a simple, beautiful Flutter application built for the SoftTaqwa Flutter Developer Challenge. It demonstrates clean code structure, modern UI/UX design, and efficient state management.

## 📱 What's Inside?

Instead of building a massive app, this project focuses on doing a few things really well:

1. **Static Login Screen**: A clean, modern entry point that simulates a login flow (UI only, no backend).
2. **Notice Board**: A list of campus announcements. Tap on any notice to read the full details.
3. **Class Routine**: A tabbed weekly schedule showing daily classes, timings, and rooms. It even includes a fun empty state for days with no classes!
4. **Result Summary**: A dashboard showing semester grades. It features a dropdown to switch between semesters, a Bar Chart to visualize GPA trends, and accurately calculates the weighted overall CGPA.

## 🛠️ Tech Stack

- **Framework**: Flutter (using Material 3)
- **State Management**: `flutter_riverpod` (Clean and safe state management)
- **Charts**: `fl_chart` (Used for the CGPA bar chart)
- **Architecture**: Modular folder structure separating Models, Providers, Screens, and Reusable Widgets.
- **Data**: Uses local mock data (No internet or backend required to test).

## 🚀 How to Run the App

Running this project is very easy. Just make sure you have Flutter installed on your machine, then follow these steps in your terminal:

1. **Clone the repository:**
   ```bash
   git clone <insert-your-repo-link-here>
   cd softtaqwa_task
   ```

2. **Install the packages:**
   ```bash
   flutter pub get
   ```

3. **Run the app:**
   ```bash
   flutter run
   ```
   *(You can run this on an Android Emulator, iOS Simulator, Chrome, or a physical device).*

## 📂 Folder Structure Overview

```text
lib/
├── main.dart                 # App entry point
├── models/                   # Data structures (Notice, Routine, Result)
├── data/                     # Mock data file
├── providers/                # Riverpod logic and state
├── screens/                  # Main UI pages (Auth, Home, Notice, Routine, Result)
├── widgets/                  # Reusable UI pieces (Cards, Charts, Custom TextFields)
└── theme/                    # App colors and typography
```

## 📸 Screenshots

<p align="center">
  <img src="screenshots/login screen.jpeg" width="220" />
  <img src="screenshots/notice board.jpeg" width="220" />
  <img src="screenshots/routine screen.jpeg" width="220" />
  <img src="screenshots/result screen.jpeg" width="220" />
</p>

---
**Challenge:** SoftTaqwa — MyCampus 3-Day Challenge  
**Submitted for:** Flutter Developer Position
