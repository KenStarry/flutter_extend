# Flutter Extend

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
Text
("SCREEN WIDTH : 
${context.
screenWidth
}
"
)
```

#### Check Dark Mode - `context.isDarkMode`

```dart
/// Change color if is Dark Mode
Container
(
width: 100,
height: 100,
color: context.isDarkMode ? Colors.grey : Colors.red,
)
,
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

## Cheat Sheets

### 📦 Animation Extensions

### 🎨 Color Extensions

<details>

<summary>Global Color Extensions (Click to open)</summary>

| Extension                        | Description                             | 
|:---------------------------------|:----------------------------------------|
| `Colors.red.getLighterShade(10)` | Lighten Color by percent (100 -> white) |
| `Colors.red.toHex()`             | Convert Color to Hexadecimal String     |

</details>

### 💎 Context Extensions

<details>

<summary>Context Extensions (Click to open)</summary>

| Extension              | Description                              |
|:-----------------------|:-----------------------------------------|
| `context.colorScheme`  | Get the current color scheme.            |
| `context.isDarkMode`   | Check if the current theme is dark mode. |
| `context.screenHeight` | Get the current screen height.           |
| `context.screenWidth`  | Get the current screen width.            |
| `context.theme`        | Get the current theme.                   |

</details>

### 📅 DateTime Extensions

<details>

<summary>DateTime Comparison Extensions (Click to open)</summary>

| Extension        | Description                                              |
|:-----------------|:---------------------------------------------------------|
| `.isToday()`     | Checks if the current DateTime provided is Today         |
| `.isPast()`      | Checks if the current DateTime provided is in the Past   |
| `.isFuture()`    | Checks if the current DateTime provided is in the Future |
| `.isYesterday()` | Check if Date is Yesterday                               |
| `.isTomorrow()`  | Check if Date is Tomorrow                                |

</details>

<details>

<summary>DateTime Formatting Extensions (Click to open)</summary>

| Extension           | Example                               | Output       |
|:--------------------|:--------------------------------------|--------------|
| `.timeAgo()`        | DateTime(2024, 1, 1).timeAgo()        | "1 year ago" |
| `.timeUntil()`      | DateTime(2026, 1, 1).timeUntil()      | "in 1 year"  |
| `.monthName()`      | DateTime(2024, 1, 1).monthName()      | "January"    |
| `.monthNameShort()` | DateTime(2024, 1, 1).monthNameShort() | "Jan"        |
| `.dayName()`        | DateTime(2024, 1, 1).dayName()        | "Monday"     |
| `.dayNameShort()`   | DateTime(2024, 1, 1).dayNameShort()   | "Mon"        |
| `.slashedDate()`    | DateTime(2024, 1, 1).slashedDate()    | "01/01/2024" |
| `.weekNumber()`     | DateTime(2024, 1, 1).weekNumber()     | 1            |

</details>

<details>

<summary>DateTime Manipulation Extensions (Click to open)</summary>

| Extension                 | Example                                 | Output                 |
|:--------------------------|:----------------------------------------|------------------------|
| `.addDays(days)`          | DateTime(2025, 1, 1).addDays(5)         | DateTime(2025, 1, 6)   |
| `.subtractDays(days)`     | DateTime(2025, 1, 1).subtractDays(5)    | DateTime(2024, 12, 27) |
| `.addMonths(months)`      | DateTime(2025, 1, 1).addMonths(5)       | DateTime(2025, 6, 1)   |
| `.subtractMonths(months)` | DateTime(2025, 1, 1).subtractMonths(5)  | DateTime(2024, 8, 1)   |
| `.addYears(years)`        | DateTime(2025, 1, 1).addYears(5)        | DateTime(2030, 1, 1)   |
| `.subtractYears(years)`   | DateTime(2025, 1, 1).subtractYears(5)   | DateTime(2020, 1, 1)   |
| `.addBusinessDays(days)`  | DateTime(2025, 1, 1).addBusinessDays(5) | DateTime(2025, 1, 8)   |

</details>

### 🕑 Number Extensions

<details>

<summary>Number Duration Extensions (Click to open)</summary>

| Extension    | Example     | Output                    |
|:-------------|:------------|---------------------------|
| `.days`      | 5.days      | Duration(days: 5)         |
| `.hours`     | 5.hours     | Duration(hours: 5)        |
| `.mins`      | 5.mins      | Duration(minutes: 5)      |
| `.secs`      | 5.secs      | Duration(seconds: 5)      |
| `.milliSecs` | 5.milliSecs | Duration(milliSeconds: 5) |
| `.microSecs` | 5.microSecs | Duration(microSeconds: 5) |

</details>

### 📂 File Extensions

<details>

<summary>File Extensions (Click to open)</summary>

| Extension                     | Example                                 | Output                 |
|:------------------------------|:----------------------------------------|------------------------|
| `.fileFormattedSize()`        | File('path').fileFormattedSize()        | 500 MB                 |
| `.filePath()`                 | File('path').filePath()                 | /emulated/0/storage... |
| `.fileExtension()`            | File('path').fileExtension()            | pdf, jpg etc...        |
| `.fileNameWithoutExtension()` | File('path').fileNameWithoutExtension() | myAwesomeFile          |

</details>

### 📦 Future Extensions

### 📦 Generator Extensions

NB: String generator methods should be used on Empty Strings for the best results.

<details>

<summary>String Generator Extensions (Click to open)</summary>

| Extension                                | Example                             | Output                              |
|:-----------------------------------------|:------------------------------------|-------------------------------------|
| `.generateLoremIpsum(wordCount)`         | "".generateLoremIpsum(wordCount: 5) | Lorem ipsum dolor sit amet          |
| `.generateUUID(length)`                  | "".generateUUID(length: 10)         | Random UUID                         |
| `.generateClipboardContents(textIfNull)` | "".generateClipboardContents()      | Returns a String clipboard contents |

</details>

### 📋 List Extensions

<details>

<summary>List Extensions (Click to open)</summary>

| Extension                  | Example                                                                                | Output                                                   |
|:---------------------------|:---------------------------------------------------------------------------------------|----------------------------------------------------------|
| `.firstOrNull()`           | ["hello", "world", "awesome"].firstOrNull()                                            | hello                                                    |
| `.lastOrNull()`            | ["hello", "world", "awesome"].lastOrNull()                                             | awesome                                                  |
| `.sortBy()`                | ["Urus", "BMW", "Aston Martin", "Ferari", "Lambo"].sortBy((car) => car)                | ["Aston Martin", "BMW", "Ferari", "Lambo", "Urus"]       |
| `.sortByAndReturnSorted()` | ["Urus", "BMW", "Aston Martin", "Ferari", "Lambo"].sortByAndReturnSorted((car) => car) | ["Aston Martin", "BMW", "Ferari", "Lambo", "Urus"]       |
| `.shuffled()`              | ["Urus", "BMW", "Aston Martin", "Ferari", "Lambo"].shuffled()                          | ["Ferari", "Aston Martin", "BMW", "Lambo", "Urus"]       |
| `.chunked(size)`           | ["Urus", "BMW", "Aston Martin", "Ferari", "Lambo"].chunked(2)                          | [['Urus', 'BMW'], ['Aston Martin', 'Ferari'], ['Lambo']] |

</details>

### 🔤 String Transformations

<details>

<summary>Auth String Extensions (Click to open)</summary>

| Extension            | Example                       | Output |
|:---------------------|:------------------------------|--------|
| `.isEmailValid()`    | "badEmail.com".isEmailValid() | false  |
| `.isPasswordValid()` | "weak12".isPasswordValid()    | false  |
| `.isValidURL()`      | "weirdurl//".isValidURL()     | false  |

</details>

<details>

<summary>Global String Extensions (Click to open)</summary>

| Extension                            | Example                                         | Output      |
|:-------------------------------------|:------------------------------------------------|-------------|
| `.capitalizeFirstLetter()`           | "hello".capitalizeFirstLetter()                 | Hello       |
| `.capitalizeFirstLetterOfEachWord()` | "hello world".capitalizeFirstLetterOfEachWord() | Hello World |
| `.getLastNCharacters(n)`             | "hello".getLastNCharacters(2)                   | lo          |
| `.mask(visibleCount)`                | "helloworld".mask()                             | he******ld  |
| `.reverse()`                         | "hello".reverse()                               | olleh       |
| `.truncateName()`                    | "Ken Starry".truncateName()                     | Ken S.      |

</details>

<details>

<summary>Regex String Extensions (Click to open)</summary>

| Extension                             | Example                                            | Output             |
|:--------------------------------------|:---------------------------------------------------|--------------------|
| `.extractDigits()`                    | "abc123".extractDigits()                           | "123"              |
| `.removeAllDigits()`                  | "abc123".removeAllDigits()                         | "abc"              |
| `.removeAllWordsStartingWithNumber()` | "1abc 2def ghi".removeAllWordsStartingWithNumber() | "ghi"              |
| `.isDigitsOnly()`                     | "12345".isDigitsOnly()                             | true               |
| `.isTextOnly()`                       | "abc".isTextOnly()                                 | true               |
| `.removeAllWhiteSpaces()`             | "a b c".removeAllWhiteSpaces()                     | "abc"              |
| `.getWords()`                         | "Hello world!".getWords()                          | ["Hello", "world"] |

</details>

### 📏 Widget Extensions

<details>

<summary>Widget Extensions (Click to open)</summary>

| Extension          | Example                                                             | Output                                                                         |
|--------------------|---------------------------------------------------------------------|--------------------------------------------------------------------------------|
| `clickableMouse`   | `Text('Click me').clickableMouse(onTap: () { print('Clicked'); })`  | A text widget that shows a mouse pointer on hover and prints 'Clicked' on tap. |
| `expanded`         | `Text('Expanded').expanded()`                                       | A text widget wrapped with an `Expanded` widget.                               |
| `flexibe`          | `Text('Flexible').flexibe()`                                        | A text widget wrapped with a `Flexible` widget.                                |
| `padding`          | `Text('Padded').padding(padding: EdgeInsets.all(16))`               | A text widget with 16 pixels of padding on all sides.                          |
| `align`            | `Text('Aligned').align(alignment: Alignment.centerRight)`           | A text widget aligned to the center right of its parent.                       |
| `clip`             | `Image.network('url').clip(borderRadius: BorderRadius.circular(8))` | An image widget clipped with an 8-pixel border radius.                         |
| `removeScrollbar`  | `ListView().removeScrollbar(context)`                               | A `ListView` without a scrollbar.                                              |
| `addScrollbar`     | `ListView().addScrollbar(context)`                                  | A `ListView` with a scrollbar.                                                 |
| `visibility`       | `Text('Visible').visibility(visible: false)`                        | A text widget that is not visible.                                             |
| `invinsible`       | `Text('Invisible').invinsible()`                                    | A text widget that is not visible.                                             |
| `visible`          | `Text('Visible').visible()`                                         | A text widget that is visible.                                                 |
| `addSelectionArea` | `Text('Selectable').addSelectionArea()`                             | A text widget that can be selected.                                            |
| `center`           | `Text('Centered').center()`                                         | A text widget centered within its parent.                                      |

</details>

<details>

<summary>Scaffold Extensions (Click to open)</summary>

| Extension               | Example                                                                                                                                                                       | Output                                                                                   |
|:------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------|
| `.addAnnotatedRegion()` | `Scaffold().addAnnotatedRegion(statusBarColor: Colors.red, statusBarBrightness: Brightness.dark, navigationBarColor: Colors.blue, navigationBarBrightness: Brightness.light)` | A `Scaffold` widget with customized status bar and navigation bar colors and brightness. |

</details>

<details>

<summary>Text Extensions (Click to open)</summary>

| Extension        | Example                                                                                                      | Output                                                                                               |
|:-----------------|:-------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|
| `.addHyperLinks` | `Text('Click here for more info').addHyperLinks(hyperLinkTexts: ['here'], onHyperlinkClicked: (word) => {})` | A `Text` widget with the word "here" as a hyperlink that triggers the `onHyperlinkClicked` function. |

</details>

## Useful Links

* [Package on pub.dev](https://pub.dev/packages/flutter_extend)
* [Flutter Documentation](https://docs.flutter.dev)
* [Dart Documentation](https://dart.dev/docs)

## License

This package is distributed under the MIT License. See
the [LICENSE](https://github.com/KenStarry/flutter_extend/blob/main/LICENSE) file for more details.

See yah!
![FLUTTER EXTEND](https://github.com/user-attachments/assets/f2fd6081-1634-4002-864f-ef0015adbf02)
