# Flutter Extend

![FLUTTER EXTEND](https://github.com/user-attachments/assets/b3a4d7ae-e1b6-4f3d-b485-857567a2cc2b)

A Flutter package designed to provide developers with a collection of useful extensions for Flutter and Dart. These extensions aim to simplify and speed up development by adding frequently used functionalities that are not available out-of-the-box.

## Features

* 🚀 Prebuilt Extension Methods: Simplify common Flutter development tasks with prebuilt extensions for widgets, colors, strings, and more.
* 🎨 Custom MaterialColor Generator: Easily create dynamic MaterialColor palettes from any Color.
* 🛠 Convenient String Manipulations: Transform and format strings effortlessly.
* 📏 Widget Utilities: Add padding, margins, and styling directly to widgets.


## Getting started

1. Add this package to your `pubspec.yaml` file:
```yaml
dependencies:
  flutter_extend: ^0.0.1
```
2. Run the following command to get the package:
```bash
  flutter pub get
```

3. Import the package in your Dart file:
```dart
import 'package:flutter_extend/flutter_extend.dart';
```

## Usage
## Context Extensions
#### Screen Width
Get the screen width using the `screenWidth` extension.

```dart
/// Get Current Screen Width
Text("SCREEN WIDTH : ${context.screenWidth}")
```

#### Screen Height
Get the screen height using the `screenHeight` extension.

```dart
/// Get Current Screen Width
Text("SCREEN HEIGHT : ${context.screenHeight}")
```

#### Check Dark Mode
Check if the system is in Dark Mode or not using the `isDarkMode` extension.
```dart
/// Change color if is Dark Mode
Container(
width: 100,
height: 100,
color: context.isDarkMode ? Colors.grey : Colors.red,
),
```

Other handy **Context** Extension methods include: 
> `context.screenWidth`, `context.screenHeight`, `context.isDarkMode`, `context.theme`, `context.colorScheme`

Visit the [context_extensions.dart example](https://github.com/KenStarry/flutter_extend/blob/main/example/lib/context_extensions_example.dart) for the full API Reference.

## String Extensions
```dart
import 'package:flutter_extend/flutter_extend.dart';

void main() {
  String text = "hello world";
  print(text.capitalize()); // Output: Hello world
}
```

### DateTime Extensions
```dart
import 'package:flutter_extend/flutter_extend.dart';

void main() {
  DateTime now = DateTime.now();
  print(now.isToday()); // Output: true if today, false otherwise
}
```

