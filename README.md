<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Effortless Flutter Development with Prebuilt Extension Methods

## Features

* 🚀 Prebuilt Extension Methods: Simplify common Flutter development tasks with prebuilt extensions for widgets, colors, strings, and more.
* 🎨 Custom MaterialColor Generator: Easily create dynamic MaterialColor palettes from any Color.
* 🛠 Convenient String Manipulations: Transform and format strings effortlessly.
* 📏 Widget Utilities: Add padding, margins, and styling directly to widgets.


## Getting started

1. Add this package to your pubspec.yaml file:
```yaml
dependencies:
  your_package_name: ^1.0.0
```
2. Run the following command to get the package:
```bash
  flutter pub get
```

3. Import the package in your Dart file:
```dart
import 'package:your_package_name/your_package_name.dart';
```

## Usage

Below you'll find some useful tips and tricks for working with `snazzy_extensions`.

You need to call the extension methods starting with the `sz` prefix as outlined below.

### String Extensions
#### 1. Capitalize
Use the extension method `szCapitalize` to capitalize words in a String.

```
String text = "hello world";
print(text.szCapitalize()); // Output: Hello World
```

