# MySkin App

## Table of content
- [Getting Started](#getting-started)
- [Overview](#overview)
- [Installation](#installation)
- [Dependencies](#dependencies)
- [Usage](#usage)
- [Contributions](#contributions)
- [License](#license)


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Overview
MySkin is a Flutter-based mobile application designed to help users determine their skin type and provide personalized skincare routines and product recommendations. This readme provides detailed instructions on installation, dependencies, and usage of the MySkin app.


## Installation

To run the MySkin app, please follow these steps:

1. Ensure you have Flutter installed on your machine. If not, please refer to the [Flutter installation guide](https://flutter.dev/docs/get-started/install) for instructions on setting up Flutter.
2. Clone the MySkin repository to your local machine.
3. Open the project in your preferred IDE (e.g., Visual Studio Code, Android Studio).
4. Run the following command in the terminal to fetch the project dependencies:

```bash
flutter pub get
```

5. Connect your mobile device or launch an emulator.
6. Build and run the app using the following command:

```bash
flutter run
```


The MySkin app will now be installed and launched on your device/emulator.

## Dependencies

The MySkin app relies on the following dependencies, which are managed in the `pubspec.yaml` file:

- `splashscreen: ^1.3.5`: A package used to display a splash screen when the app starts.
- `intro_views_flutter: ^2.8.0`: Provides onboarding screens with customizable features.
- `flutter_svg: ^0.22.0`: Enables rendering of SVG images in Flutter.
- `firebase_core: ^1.10.0`: The core Firebase package required for Firebase services.
- `firebase_auth: ^3.3.5`: Enables user authentication using Firebase.

Note: The `flutter_lints: ^2.0.0` package is used for linting and enforcing good coding practices.

## Usage

The MySkin app consists of several screens and features. Here's an overview of each component:

- **SplashScreen**: The initial screen that appears when the app is launched, displaying the app logo.
- **OnboardingScreen**: Guides new users through a series of informative screens about the app's features and benefits.
- **LoginScreen**: Allows existing users to log in using their credentials.
- **SignUpScreen**: Enables new users to create an account and register with the app.
- **HomeScreen**: Serves as the main screen after successful login, providing access to various app features.
- **ProfileScreen**: Displays the user's profile information and allows for editing.
- **SkinTypeQuizScreen**: Presents a series of questions to determine the user's skin type.
- **RoutineSetupScreen**: Helps users set up personalized skincare routines based on their skin type.
- **ProductRecommendationsScreen**: Shows product recommendations tailored to the user's skin type.

To navigate between screens, the app uses named routes. The `routes` property in the `MyApp` class defines the mapping of route names to screen widgets.

Feel free to explore and modify the code to customize the app according to your needs.

## Contributions

Contributions to the MySkin app are welcome! If you find any issues or have ideas for improvements, please submit a pull request or open an issue on the project's GitHub repository.

## License

The MySkin app is released under the [MIT License](https://opensource.org/licenses/MIT).


