#  Flutter Extend
![FLUTTER EXTEND](https://github.com/user-attachments/assets/b3a4d7ae-e1b6-4f3d-b485-857567a2cc2b)

A Flutter package designed to provide developers with a collection of useful extensions for Flutter and Dart. These
extensions aim to simplify and speed up development by adding frequently used functionalities that are not available
out-of-the-box.

## Features

* 🚀 Prebuilt Extension Methods: Simplify common Flutter development tasks with prebuilt extensions for widgets, colors,
  strings, and more.
* 🎨 Custom MaterialColor Generator: Easily create dynamic MaterialColor palettes from any Color.
* 🛠 Convenient String Manipulations: Transform and format strings effortlessly.
* 📏 Widget Utilities: Add padding, margins, and styling directly to widgets.

## Getting started

1. Add this package to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_extend: ^0.0.6
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

#### Screen Width - `context.screenWidth`

```dart
/// Get Current Screen Width
Text("SCREEN WIDTH : ${context.screenWidth}")
```

#### Check Dark Mode - `context.isDarkMode`

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

Visit
the [context_extensions.dart example](https://github.com/KenStarry/flutter_extend/blob/main/example/lib/context_extensions_example.dart)
for the full API Reference.

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

## Examples
Check out the [examples directory](https://github.com/KenStarry/flutter_extend/tree/main/example/lib) for complete
examples demonstrating the use of this package:

```bash
git clone https://github.com/KenStarry/flutter_extend.git
cd flutter_extend/examples
flutter run
```

## Contributing

We welcome contributions! If you have ideas or improvements, feel free to:

* Fork the repository.
* Create a new branch for your feature/bug fix.
* Submit a pull request.

Read the Contributing Guidelines for more details.

## Refrences

<!--
CONTEXT EXTENSIONS
-->
<details open>

<summary>Context Extensions (Click to open)</summary>

| Extension              | Description                               |
|:-----------------------|:------------------------------------------|
| `context.screenWidth`  | Get the current screen width.             |
| `context.screenHeight` | Get the current screen height.            |
| `context.isDarkMode`   | Check if the current theme is dark mode.  |
| `context.theme`        | Get the current theme.                    |
| `context.colorScheme`  | Get the current color scheme.             |

</details>

<!--
DATE TIME EXTENSIONS
-->
<details open>

<summary>DateTime Extensions (Click to open)</summary>

<!--COMPARISON EXTENSIONS-->
<details open>

<summary>DateTime Comparison Extensions</summary>

| Extension     | Description                                              |
|:--------------|:---------------------------------------------------------|
| `isToday`     | Checks if the current DateTime provided is Today         |
| `isPast`      | Checks if the current DateTime provided is in the Past   |
| `isFuture`    | Checks if the current DateTime provided is in the Future |
| `isYesterday` | Check if Date is Yesterday                               |
| `isTomorrow`  | Check if Date is Tomorrow                                |

</details>

<!--FORMATTING EXTENSIONS-->
<details open>

<summary>DateTime Formatting Extensions</summary>

| Extension        | Description                                                                                  |
|:-----------------|:---------------------------------------------------------------------------------------------|
| `timeAgo`        | Converts the current DateTime into a human readable format eg 2 years ago, 5 hours ago etc.  |
| `timeUntil`      | Gets the amount of time remaining until this DateTime is reached eg in 2 years, in 3 minutes |
| `monthName`      | Gets the given DateTime's Month Name eg. January, February, March etc...                     |
| `monthNameShort` | Gets the shortened of the given DateTime's Month Name eg. Jan, feb, Mar, etc...              |
| `dayName`        | Gets the given DateTime's Day Name eg. Monday, Tuesday, Wednesday etc...                     |
| `dayNameShort`   | Gets the shortened of the given DateTime's Day Name eg. Mon, Tue, Wed etc...                 |
| `slashedDate`    | Gets the Slashed Date Format of the given DateTime eg. 31/12/2025                            |
| `weekNumber`     | Get Week Number of the Given Date                                                            |

</details>

<!--MANIPULATION EXTENSIONS-->
<details open>

<summary>DateTime Manipulation Extensions</summary>

| Extension         | Description                                       |
|:------------------|:--------------------------------------------------|
| `addDays`         | Add Number of Days to the DateTime                |
| `subtractDays`    | Subtract Number of Days from the DateTime         |
| `addMonths`       | Add Number of Months to the DateTime              |
| `subtractMonths`  | Subtract Number of Months from the DateTime       |
| `addYears`        | Add Number of Years to the DateTime               |
| `subtractYears`   | Subtract Number of Years from the DateTime        |
| `addBusinessDays` | Adds Business Days to the current DateTime Object |

</details>

</details>

## Useful Links

* [Package on pub.dev](https://pub.dev/packages/flutter_extend)
* [Flutter Documentation](https://docs.flutter.dev)
* [Dart Documentation](https://dart.dev/docs)

## License

This package is distributed under the MIT License. See the [LICENSE](https://github.com/KenStarry/flutter_extend/blob/main/LICENSE) file for more details.

See yah!
![FLUTTER EXTEND](https://github.com/user-attachments/assets/f2fd6081-1634-4002-864f-ef0015adbf02)
