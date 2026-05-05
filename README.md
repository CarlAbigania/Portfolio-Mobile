# John Carlo's Portfolio Mobile 📱

A premium, modern, and minimalist mobile portfolio application built using **Flutter**. This app showcases my professional journey, creative projects, and technical skills as a Digital Architect & Developer.

---

## ✨ Features
- 🎨 **Minimalist Design**: Harmonious "Deep Navy & Slate" theme using Material 3 and premium aesthetics.
- 👤 **About Me**: Detailed profile covering personal info, educational background, and core technical competencies.
- 🖼️ **Project Gallery**: A beautifully organized staggered grid showcasing professional projects and creative works.
- 🎯 **Mission & Vision**: A visual representation of career goals, core values, and institutional commitments.
- ✉️ **Contact System**: An integrated message form and quick-contact info cards for seamless networking.
- 📱 **Responsive Design**: Optimized for a premium experience on both mobile devices and web browsers.

---

## 🚀 How to Run the System

Follow these steps to get the project up and running on your local machine.

### 1. Prerequisites
Before you begin, ensure you have the following installed:
- **Flutter SDK**: [Download & Install Flutter](https://docs.flutter.dev/get-started/install)
- **Dart SDK**: Included with Flutter.
- **Android Studio / VS Code**: Recommended IDEs with Flutter/Dart extensions.
- **Java Development Kit (JDK)**: Required for Android builds.

### 2. Environment Verification
Open your terminal (PowerShell or Command Prompt on Windows) and run:
```bash
flutter doctor
```
Ensure that Flutter and your target platform (Android/iOS/Web) are correctly configured.

### 3. Get Dependencies
Navigate to the project root directory and install the required packages:
```bash
flutter pub get
```

### 4. Run the Application
You can run the app on a connected physical device, an emulator, or even a web browser.

#### Run on any available device:
```bash
flutter run
```

#### Run on a specific platform:
- **Android**: `flutter run -d android`
- **Windows**: `flutter run -d windows`
- **Web**: `flutter run -d chrome`

---

## 🌐 Deployment (Making it Visible to Others)

To share your portfolio with the world, you can deploy it as a web app or share an Android APK.

### 1. Web Deployment (Recommended)
Hosting as a website is the best way to share your app via a link or QR code.

#### Option A: GitHub Pages (Free & Easy)
1. Build the web project with the correct base path:
   ```bash
   flutter build web --release --base-href "/Portfolio-Mobile/"
   ```
2. Use the `gh-pages` package to deploy:
   ```bash
   cd build/web
   git init
   git add .
   git commit -m "Deploy Portfolio App to GitHub Pages"
   git remote add origin https://github.com/CarlAbigania/Portfolio-Mobile.git
   git push origin master:gh-pages --force
   ```
3. In your GitHub repo settings, go to **Pages** and ensure the `gh-pages` branch is selected.

#### Option B: Firebase Hosting
1. Install Firebase CLI: `npm install -g firebase-tools`.
2. Run `firebase init hosting` and set the public directory to `build/web`.
3. Run `firebase deploy`.

### 2. Android Distribution (APK)
If you want people to install it on their Android phones:
1. Build the APK:
   ```bash
   flutter build apk --release
   ```
2. Share the file located at: `build/app/outputs/flutter-apk/app-release.apk`.

---

## 🛠️ Tech Stack
- **Framework**: [Flutter](https://flutter.dev/) (Material 3 enabled)
- **Language**: [Dart](https://dart.dev/)
- **Typography**: [Google Fonts](https://pub.dev/packages/google_fonts) (Outfit)
- **Icons**: Material Icons Rounded

---

## 📂 Project Structure
- `lib/main.dart`: The core application entry point, routing, and theme configuration.
- `lib/screens/`: Contains all functional screens (Home, About, Gallery, Mission, Contact).
- `lib/widgets/`: Shared UI components like the custom `HeaderWidget`.
- `data/images/`: Local storage for profile and project assets.
- `pubspec.yaml`: Project configuration and dependency management.

---

## 🏗️ Building for Production

To create a release version of the app:

### Android
```bash
flutter build apk --release
```

### Windows
```bash
flutter build windows
```

---

Developed by **John Carlo E. Abigania**
